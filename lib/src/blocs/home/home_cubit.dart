import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../models/product.dart';
import '../../services/product_service.dart';
import '../../services/sale_service.dart';

part 'home_state.dart';
part 'home_cubit.freezed.dart';

// TODO: HomeCubit is a mess with a mix of loading products and invoice
@lazySingleton
class HomeCubit extends Cubit<HomeState> {
  final ProductService _productService;
  final SaleService _saleService;

  late List<Product> _loadedProducts;

  HomeCubit(
    this._productService,
    this._saleService,
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
      var response = await _saleService.create(url);
      if (response.success) {
        String saleId = response.result;
        emit(HomeState.invoiceLoaded(saleId));
        load();
      } else {
        throw Exception(response.result);
      }
    } catch (e) {
      emit(HomeState.error('Error when loading invoice $e'));
      emit(HomeState.success(_loadedProducts));
    }
  }
}
