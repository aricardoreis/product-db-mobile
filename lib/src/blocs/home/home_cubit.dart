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

  late List<Product> _loadedProducts;

  HomeCubit(
    this._productService,
    this._apiService,
  ) : super(const HomeState.initial()) {
    load();
  }

  void load() async {
    try {
      emit(const HomeState.loading());
      _loadedProducts = await _productService.getProducts();
      emit(HomeState.success(_loadedProducts));
    } catch (e) {
      emit(const HomeState.error('Error when getting products'));
    }
  }

  void filter(String name) {
    if (name.isEmpty) return;

    var filteredProducts = _loadedProducts
        .where((product) =>
            product.name.toLowerCase().contains(name.toLowerCase()))
        .toList();
    emit(HomeState.success(filteredProducts));
  }

  void loadInvoice(String url) async {
    try {
      emit(const HomeState.loading());
      var response = await _apiService.loadInvoice(url);
      if (response.success) {
        load();
      } else {
        emit(HomeState.success(_loadedProducts));
      }
    } catch (e) {
      emit(const HomeState.error('Error when loading invoice'));
      load();
    }
  }
}
