// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:product_db_mobile/src/blocs/home/home_cubit.dart' as _i5;
import 'package:product_db_mobile/src/blocs/sale/sale_cubit.dart' as _i6;
import 'package:product_db_mobile/src/services/product_service.dart' as _i3;
import 'package:product_db_mobile/src/services/sale_service.dart' as _i4;

extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.factory<_i3.ProductService>(() => _i3.ProductServiceImpl());
    gh.factory<_i4.SaleService>(() => _i4.SaleServiceImpl());
    gh.lazySingleton<_i5.HomeCubit>(() => _i5.HomeCubit(
          gh<_i3.ProductService>(),
          gh<_i4.SaleService>(),
        ));
    gh.lazySingleton<_i6.SaleCubit>(() => _i6.SaleCubit(gh<_i4.SaleService>()));
    return this;
  }
}
