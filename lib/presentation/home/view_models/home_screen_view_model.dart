import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:whm_places/presentation/home/view_models/place_card_view_model.dart';

part 'home_screen_view_model.freezed.dart';

@freezed
class HomeScreenViewModel with _$HomeScreenViewModel {
  const factory HomeScreenViewModel({
    required List<PlaceCardViewModel> placeCards,
    @Default('') String searchText,
    @Default(false) bool isSearchStarted,
    @Default([]) List<PlaceCardViewModel> searchedCards,
  }) = _HomeScreenViewModel;
}
