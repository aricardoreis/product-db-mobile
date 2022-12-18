import 'package:dio/dio.dart';
import '../models/product.dart';
import '../models/product_response.dart';
import '../utils/constants.dart';

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

  Future<List<Product>> loadInvoice(String url) async {
    var result = await httpClient.post(
      '/load',
      data: {
        'url': url,
      },
      options: Options(contentType: 'application/json; charset=utf-8'),
    );

    if (result.statusCode == 200) {
      return ProductsResponse.fromJson(result.data).result;
    }

    throw Exception('Error when loading invoice');
  }
}
