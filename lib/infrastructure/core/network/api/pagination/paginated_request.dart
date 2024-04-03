import 'package:json_annotation/json_annotation.dart';

part 'paginated_request.g.dart';

@JsonSerializable()
class PaginatedRequest {
  PaginatedRequest({
    required this.pageSize,
    required this.pageNumber,
  });

  final int pageSize;
  final int pageNumber;

  Map<String, dynamic> toJson() => _$PaginatedRequestToJson(this);
}
