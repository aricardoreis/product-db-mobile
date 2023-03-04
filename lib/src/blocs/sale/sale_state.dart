part of 'sale_cubit.dart';

@freezed
class SaleState with _$SaleState {
  const factory SaleState.initial() = _Initial;
  const factory SaleState.loading() = _Loading;
  const factory SaleState.error(String message) = _Error;
  const factory SaleState.success(List<Sale> result) = _Success;
}
