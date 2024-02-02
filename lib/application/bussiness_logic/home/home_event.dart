part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.getCategory() = _GetCategory;
  const factory HomeEvent.getBanner() = _GetBanner;
}
