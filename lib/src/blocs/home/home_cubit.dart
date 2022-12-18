import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../models/product.dart';
import '../../repository/api.dart';
import '../../repository/product_repository.dart';

part 'home_state.dart';
part 'home_cubit.freezed.dart';

class HomeCubit extends Cubit<HomeState> {
  final _productRepository = ProductRepositoryApi();
  final _apiRepository = ApiRepository();

  HomeCubit() : super(const HomeState.initial()) {
    refresh();
  }

  void refresh() async {
    try {
      emit(const HomeState.loading());
      var products = await _productRepository.getProducts();
      emit(HomeState.success(products));
    } catch (e) {
      emit(const HomeState.error('Error when getting products'));
    }
  }

  void loadInvoice(String url) async {
    try {
      emit(const HomeState.loading());
      var result = await _apiRepository.loadInvoice(url);
      // TODO: refactor to call refresh after loading invoice
      emit(HomeState.success(result));
    } catch (e) {
      emit(const HomeState.error('Error when getting products'));
    }
  }
}
