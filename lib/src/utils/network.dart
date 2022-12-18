import 'package:dio/dio.dart';

import 'constants.dart';

final httpClient = Dio(
  BaseOptions(
    baseUrl: apiUrl,
    validateStatus: (status) {
      return status! < 500;
    },
  ),
);
