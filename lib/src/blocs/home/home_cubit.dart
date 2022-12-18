import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../models/product.dart';
import '../../services/api_service.dart';
import '../../services/product_service.dart';

part 'home_state.dart';
part 'home_cubit.freezed.dart';

@lazySingleton
class HomeCubit extends Cubit<HomeState> {
  final ProductService _productService;
  final ApiService _apiService;

  HomeCubit(
    this._productService,
    this._apiService,
  ) : super(const HomeState.initial()) {
    refresh();
  }

  void refresh() async {
    try {
      emit(const HomeState.loading());
      var products = await _productService.getProducts();
      emit(HomeState.success(products));
    } catch (e) {
      emit(const HomeState.error('Error when getting products'));
    }
  }

  void loadInvoice(String url) async {
    try {
      emit(const HomeState.loading());
      var result = await _apiService.loadInvoice(url);
      if (result.success) {
        refresh();
      } else {
        emit(const HomeState.error('Failed to load invoice'));
      }
    } catch (e) {
      emit(const HomeState.error('Error when loading products'));
    }
  }
}
