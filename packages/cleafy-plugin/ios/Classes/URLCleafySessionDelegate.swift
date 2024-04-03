import Cleafy
import Foundation

class URLCleafySessionDelegate: NSObject {
    private let cleafyInterceptor = CleafyAPIIntegrityInterceptor()
}

extension URLCleafySessionDelegate: URLSessionDelegate, URLSessionTaskDelegate, URLSessionDataDelegate {
    // MARK: - URLSessionTaskDelegate

    func urlSession(
        _ session: URLSession,
        task: URLSessionTask,
        didCompleteWithError error: Error?
    ) {
        cleafyInterceptor.urlSession(
            session,
            task: task,
            didCompleteWithError: error
        )
    }

    func urlSession(
        _ session: URLSession,
        task: URLSessionTask,
        willPerformHTTPRedirection response: HTTPURLResponse,
        newRequest request: URLRequest,
        completionHandler: @escaping (URLRequest?) -> Void
    ) {
        cleafyInterceptor.urlSession(
            session,
            task: task,
            willPerformHTTPRedirection: response,
            newRequest: request
        )

        completionHandler(task.currentRequest)
    }

    func urlSession(
        _ session: URLSession,
        task: URLSessionTask,
        didReceive challenge: URLAuthenticationChallenge,
        completionHandler: @escaping (URLSession.AuthChallengeDisposition, URLCredential?) -> Void
    ) {
        cleafyInterceptor.urlSession(
            task: task,
            didReceive: challenge
        )

        completionHandler(URLSession.AuthChallengeDisposition.performDefaultHandling, nil)
    }

    func urlSession(
        _ session: URLSession,
        didBecomeInvalidWithError error: Error?
    ) {
        cleafyInterceptor.urlSession(session, didBecomeInvalidWithError: error)
    }

    // MARK: - URLSessionDataDelegate

    func urlSession(
        _ session: URLSession,
        dataTask: URLSessionDataTask,
        didReceive data: Data
    ) {
        cleafyInterceptor.urlSession(
            dataTask: dataTask,
            didReceive: data
        )
    }
}
