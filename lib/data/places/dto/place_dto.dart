import 'package:freezed_annotation/freezed_annotation.dart';

part 'place_dto.freezed.dart';
part 'place_dto.g.dart';

@freezed
class PlaceDto with _$PlaceDto {
  const factory PlaceDto({
    required dynamic id,
    required dynamic title,
    required dynamic image,
    required dynamic description,
    required dynamic difficulty,
    required dynamic latitude,
    required dynamic longitude,
    required dynamic createdDate,
  }) = _PlaceDto;

  const PlaceDto._();

  factory PlaceDto.fromJson(Map<String, Object?> json) => _$PlaceDtoFromJson(json);

}
