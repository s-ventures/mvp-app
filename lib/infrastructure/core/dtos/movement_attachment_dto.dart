import 'package:freezed_annotation/freezed_annotation.dart';

part 'movement_attachment_dto.freezed.dart';
part 'movement_attachment_dto.g.dart';

@freezed
class MovementAttachmentDto with _$MovementAttachmentDto {
  const factory MovementAttachmentDto({
    required int movementAttachmentId,
    required int movementId,
    required int fileId,
  }) = _MovementAttachmentDto;

  factory MovementAttachmentDto.fromJson(Map<String, dynamic> json) => _$MovementAttachmentDtoFromJson(json);
}
