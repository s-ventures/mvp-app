// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paginated_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaginatedRequest _$PaginatedRequestFromJson(Map<String, dynamic> json) => PaginatedRequest(
      pageSize: json['pageSize'] as int,
      pageNumber: json['pageNumber'] as int,
    );

Map<String, dynamic> _$PaginatedRequestToJson(PaginatedRequest instance) => <String, dynamic>{
      'pageSize': instance.pageSize,
      'pageNumber': instance.pageNumber,
    };
