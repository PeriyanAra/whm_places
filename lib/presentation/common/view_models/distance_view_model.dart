import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:whm_places/presentation/common/enums/measure_type.dart';

part 'distance_view_model.freezed.dart';

@freezed
class DistanceViewModel with _$DistanceViewModel {
  const factory DistanceViewModel({
    required double distance,
    required MeasureType measureType,
  }) = _DistanceViewModel;
}
