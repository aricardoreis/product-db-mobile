import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../models/sale.dart';
import '../../services/sale_service.dart';

part 'sale_state.dart';
part 'sale_cubit.freezed.dart';

@lazySingleton
class SaleCubit extends Cubit<SaleState> {
  final SaleService _saleService;

  late List<Sale> _loadedSales;

  SaleCubit(this._saleService) : super(const SaleState.initial()) {
    load();
  }

  void load() async {
    try {
      emit(const SaleState.loading());
      _loadedSales = await _saleService.getSales();
      emit(SaleState.success(_loadedSales));
    } catch (e) {
      emit(const SaleState.error('Error when getting sales'));
    }
  }
}
