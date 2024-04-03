import Cleafy

enum HttpMethod: String {
    case get
    case post
    case head
    case put
    case delete
    case patch
}

extension CleafyFlutterPlugin {
    func performRequest(
        from dictionary: [String: Any],
        result: @escaping FlutterResult
    ) {
        guard let baseURL = dictionary["baseUrl"] as? String else {
            result(
                FlutterError(
                    code: "",
                    message: "Invalid URL",
                    details: nil
                )
            )
            return
        }

        guard
            let method = dictionary["method"] as? String,
            let validMethod = HttpMethod(rawValue: method.lowercased())
        else {
            result(
                FlutterError(
                    code: "",
                    message: "Invalid http method",
                    details: nil
                )
            )
            return
        }

        doRequest(
            from: baseURL,
            method: validMethod,
            queryParams: dictionary["params"] as? [String: String] ?? [:],
            body: dictionary["body"] as? [String: Any] ?? [:],
            headers: dictionary["headers"] as? [String: String] ?? [:],
            timeout: dictionary["timeout"] as? Int ?? 60,
            success: { successData in
                result(successData)
            },
            failure: { failureData in
                result(
                    FlutterError(
                        code: "1",
                        message: "Error on request with status \(failureData["status"] as? String ?? "unknown")",
                        details: failureData
                    )
                )
            }
        )
    }
}

// MARK: - HTTP Utils

extension CleafyFlutterPlugin {
    func doRequest(
        from baseURL: String,
        method: HttpMethod,
        queryParams: [String: String],
        body: [String: Any],
        headers: [String: String],
        timeout: Int,
        success: @escaping ([String: Any]) -> Void,
        failure: @escaping ([String: Any]) -> Void
    ) {
        createBaseRequest(
            from: baseURL,
            queryParams: queryParams,
            success: { [weak self] req in
                guard let self = self else {
                    return
                }
                var request = req
                request.httpMethod = method.rawValue
                headers.forEach {
                    request.addValue($0.value, forHTTPHeaderField: $0.key)
                }
                guard !body.isEmpty else {
                    self.handleRequest(
                        request,
                        with: timeout,
                        success: success,
                        failure: failure
                    )
                    return
                }
                do {
                    request.httpBody = try JSONSerialization.data(
                        withJSONObject: body,
                        options: []
                    )
                    self.handleRequest(
                        request,
                        with: timeout,
                        success: success,
                        failure: failure
                    )
                } catch {
                    failure(self.handleNetworkError(error.localizedDescription))
                }
            },
            failure: failure
        )
    }

    func createBaseRequest(
        from baseURL: String,
        queryParams: [String: String],
        success: @escaping (URLRequest) -> Void,
        failure: @escaping ([String: Any]) -> Void
    ) {
        guard var urlComp = URLComponents(string: baseURL) else {
            failure(handleNetworkError("URL: \(baseURL) invalid!"))
            return
        }
        queryParams.forEach {
            urlComp.queryItems?.append(
                URLQueryItem(name: $0.key, value: $0.value)
            )
        }
        guard let url = urlComp.url else {
            failure(handleNetworkError("Url Components invalid"))
            return
        }
        success(URLRequest(url: url))
    }

    func handleRequest(
        _ request: URLRequest,
        with timeout: Int,
        success: @escaping ([String: Any]) -> Void,
        failure: @escaping ([String: Any]) -> Void
    ) {
        let sessionConfiguration = URLSessionConfiguration.default
        sessionConfiguration.timeoutIntervalForRequest = TimeInterval(timeout)
        sessionConfiguration.timeoutIntervalForResource = TimeInterval(timeout)
        let session = URLSession(
            configuration: sessionConfiguration,
            delegate: URLCleafySessionDelegate(),
            delegateQueue: nil
        )
        let cleafyRequest = CleafyHttpRequestInterceptor().intercept(request)
        let dataTask = session.dataTask(with: cleafyRequest) { [weak self] data, response, error in
            self?.handleResponse(
                from: data,
                response: response,
                error: error,
                success: success,
                failure: failure
            )
        }

        dataTask.resume()
    }
}

extension CleafyFlutterPlugin {
    func handleResponse(
        from data: Data?,
        response: URLResponse?,
        error: Error?,
        success: @escaping ([String: Any]) -> Void,
        failure: @escaping ([String: Any]) -> Void
    ) {
        var dictionary = [String: Any]()
        guard let urlResponse = response as? HTTPURLResponse else {
            dictionary["error"] = error?.localizedDescription ?? "Error to read response"
            failure(dictionary)
            return
        }
        dictionary["status"] = urlResponse.statusCode
        dictionary["headers"] = urlResponse.allHeaderFields
        dictionary["url"] = urlResponse.url?.absoluteString

        if let error = error {
            dictionary["error"] = error.localizedDescription
            failure(dictionary)
        } else if let data = data {
            dictionary["data"] = data
            success(dictionary)
        } else {
            success(dictionary)
        }
    }

    func handleNetworkError(_ errorString: String) -> [String: Any] {
        ["error": errorString]
    }
}
