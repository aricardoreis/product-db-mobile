import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import '../models/api_response.dart';
import '../utils/network.dart';

abstract class ApiService {
  Future<ApiResponse> loadInvoice(String url);
}

@Injectable(as: ApiService)
class ApiServiceImpl implements ApiService {
  ApiServiceImpl();

  @override
  Future<ApiResponse> loadInvoice(String url) async {
    var result = await httpClient.post(
      '/load',
      data: {
        'url': url,
      },
      options: Options(contentType: 'application/json; charset=utf-8'),
    );

    return ApiResponse.fromJson(result.data);
  }
}
