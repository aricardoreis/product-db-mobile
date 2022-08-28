import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../constants/utils.dart';

final apiProvider = Provider(
  (ref) => Dio(
    BaseOptions(
      baseUrl: apiUrl,
    ),
  ),
);

final apiRepository = Provider<ApiRepository>(
  (ref) => ApiRepository(ref.read),
);

class ApiRepository {
  final Reader read;
  ApiRepository(this.read);

  Future<String> loadInvoice(String url) async {
    var result = await read(apiProvider).post(
      '/load',
      data: {
        url: url,
      },
    );
    return result.data;
  }
}
