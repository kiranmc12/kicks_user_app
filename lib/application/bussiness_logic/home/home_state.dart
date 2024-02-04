part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState(
      {required bool isLoading,
      required bool hasError,
      String? message,
      bool? expired,
      List<Banners>? banners,
      List<Category>? category}) = _Initial;
  factory HomeState.initial() =>
      HomeState(isLoading: false, hasError: false, expired: false);
}
