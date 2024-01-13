import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:whm_places/data/data.dart';
import 'package:whm_places/presentation/common/view_models/view_models.dart';

part 'place_detail_screen_view_model.freezed.dart';

@freezed
class PlaceDetailViewModel with _$PlaceDetailViewModel {
  const factory PlaceDetailViewModel({
    required int id,
    required String imagePath,
    required String title,
    required String description,
    required DistanceViewModel? distanceViewModel,
    required int difficulty,
    required double latitude,
    required double longitude,
  }) = _PlaceDetailViewModel;

  factory PlaceDetailViewModel.fromDto(PlaceDto placeDto) {
    return PlaceDetailViewModel(
      id: int.tryParse(placeDto.id.toString()) ?? 0,
      imagePath: placeDto.image == null
          ? ''
          : placeDto.image.toString().startsWith('https:')
              ? placeDto.image.toString()
              : '',
      title: placeDto.title == null ? '' : placeDto.title.toString(),
      description: placeDto.description == null ? '' : placeDto.description.toString(),
      difficulty: int.tryParse(placeDto.difficulty.toString()) ?? 0,
      latitude: double.tryParse(placeDto.latitude.toString()) ?? 0,
      longitude: double.tryParse(placeDto.longitude.toString()) ?? 0,
      distanceViewModel: null,
    );
  }
}
