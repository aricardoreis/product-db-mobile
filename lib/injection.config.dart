// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:product_db_mobile/src/blocs/home/home_cubit.dart' as _i5;
import 'package:product_db_mobile/src/services/api_service.dart' as _i3;
import 'package:product_db_mobile/src/services/product_service.dart' as _i4;

/// ignore_for_file: unnecessary_lambdas
/// ignore_for_file: lines_longer_than_80_chars
extension GetItInjectableX on _i1.GetIt {
  /// initializes the registration of main-scope dependencies inside of [GetIt]
  _i1.GetIt init(
      {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
    final gh = _i2.GetItHelper(this, environment, environmentFilter);
    gh.factory<_i3.ApiService>(() => _i3.ApiServiceImpl());
    gh.factory<_i4.ProductService>(() => _i4.ProductServiceImpl());
    gh.singleton<_i5.HomeCubit>(
        _i5.HomeCubit(gh<_i4.ProductService>(), gh<_i3.ApiService>()));
    return this;
  }
}
