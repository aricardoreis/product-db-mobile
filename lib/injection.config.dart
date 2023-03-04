// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:product_db_mobile/src/blocs/home/home_cubit.dart' as _i6;
import 'package:product_db_mobile/src/blocs/sale/sale_cubit.dart' as _i7;
import 'package:product_db_mobile/src/services/api_service.dart' as _i3;
import 'package:product_db_mobile/src/services/product_service.dart' as _i4;
import 'package:product_db_mobile/src/services/sale_service.dart' as _i5;

/// ignore_for_file: unnecessary_lambdas
/// ignore_for_file: lines_longer_than_80_chars
extension GetItInjectableX on _i1.GetIt {
  /// initializes the registration of main-scope dependencies inside of [GetIt]
  _i1.GetIt init(
      {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
    final gh = _i2.GetItHelper(this, environment, environmentFilter);
    gh.factory<_i3.ApiService>(() => _i3.ApiServiceImpl());
    gh.factory<_i4.ProductService>(() => _i4.ProductServiceImpl());
    gh.factory<_i5.SaleService>(() => _i5.SaleServiceImpl());
    gh.lazySingleton<_i6.HomeCubit>(
        () => _i6.HomeCubit(gh<_i4.ProductService>(), gh<_i3.ApiService>()));
    gh.lazySingleton<_i7.SaleCubit>(() => _i7.SaleCubit(gh<_i5.SaleService>()));
    return this;
  }
}
