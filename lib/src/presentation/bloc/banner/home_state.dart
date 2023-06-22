part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    @Default(false) bool isLoading,
    @Default([]) List<Banners> banners,
    @Default([]) List<Categories> categories,
  }) = _HomeState;

}
