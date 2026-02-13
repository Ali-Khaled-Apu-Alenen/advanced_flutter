import 'package:advanced_flutter/core/networking/api_error_handler.dart';
import 'package:advanced_flutter/features/home/data/models/home_services_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = _Initial;
  const factory HomeState.spicalizationLoading() = SpicalizationLoading;
  const factory HomeState.spicalizationSuccess(
    SpicalizationDataResponseModel spicalizationDataResponseModel,
  ) = SpicalizationSuccess;
  const factory HomeState.spicalizationError(ErrorHandler errorHandle) =
      SpicalizationError;
}
