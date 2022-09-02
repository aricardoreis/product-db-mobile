import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/api_response.dart';
import '../constants/utils.dart';

final apiProvider = Provider(
  (ref) => Dio(
    BaseOptions(
      baseUrl: apiUrl,
      validateStatus: (status) {
        return status! < 500;
      },
    ),
  ),
);

final apiRepository = Provider<ApiRepository>(
  (ref) => ApiRepository(ref.read),
);

class ApiRepository {
  final Reader read;
  ApiRepository(this.read);

  Future<ApiResponse> loadInvoice(String url) async {
    var result = await read(apiProvider).post(
      '/load',
      data: {
        'url': url,
      },
      options: Options(contentType: 'application/json; charset=utf-8'),
    );
    return ApiResponse.fromJson(result.data);
  }
}
