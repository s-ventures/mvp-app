import 'package:freezed_annotation/freezed_annotation.dart';

part 'place.freezed.dart';

@freezed

/// Location in a Google map (also known as Place in the Google Maps API docs)
class Place with _$Place {
  const factory Place({
    required String id,
  }) = _Place;
}
