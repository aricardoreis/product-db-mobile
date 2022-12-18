import 'package:dio/dio.dart';
import '../models/api_response.dart';
import '../constants/utils.dart';
import '../models/product_response.dart';

final httpClient = Dio(
  BaseOptions(
    baseUrl: apiUrl,
    validateStatus: (status) {
      return status! < 500;
    },
  ),
);

class ApiRepository {
  ApiRepository();

  Future<ApiResponse> loadInvoice(String url) async {
    var result = await httpClient.post(
      '/load',
      data: {
        'url': url,
      },
      options: Options(contentType: 'application/json; charset=utf-8'),
    );

    if (result.statusCode == 200) {
      return ProductsResponse.fromJson(result.data) as ApiResponse;
    } else {
      return ApiResponse.fromJson(result.data);
    }
  }
}
