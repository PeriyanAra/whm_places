import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:whm_places/data/data.dart';
import 'package:whm_places/presentation/common/view_models/view_models.dart';

part 'place_card_view_model.freezed.dart';

@freezed
class PlaceCardViewModel with _$PlaceCardViewModel {
  const factory PlaceCardViewModel({
    required int id,
    required String imageUrl,
    required String placeName,
    required DistanceViewModel? distanceViewModel,
    @Default('') String searchedText,
  }) = _PlaceCardViewModel;

  factory PlaceCardViewModel.fromDto(PlaceDto dto) {
    return PlaceCardViewModel(
      id: int.tryParse(dto.id.toString()) ?? 0,
      imageUrl: dto.image == null
          ? ''
          : dto.image.toString().startsWith('https:')
              ? dto.image.toString()
              : '',
      placeName: dto.title == null ? '' : dto.title.toString(),
      distanceViewModel: null,
    );
  }
}
