import 'package:json_annotation/json_annotation.dart';

part 'paginated_response.g.dart';

@JsonSerializable(genericArgumentFactories: true)
class PaginatedResponse<T> {
  PaginatedResponse({
    required this.totalElements,
    required this.totalPages,
    required this.data,
  });

  factory PaginatedResponse.fromJson(
          Map<String, dynamic> json, T Function(Object? json) fromJsonT) =>
      _$PaginatedResponseFromJson(json, fromJsonT);

  final int totalElements;
  final int totalPages;
  final List<T> data;

  Map<String, dynamic> toJson(Object Function(T value) toJsonT) =>
      _$PaginatedResponseToJson(this, toJsonT);
}
