part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.getBanners() = GetBanners;
  const factory HomeEvent.getProducts() = GetProducts;
}
