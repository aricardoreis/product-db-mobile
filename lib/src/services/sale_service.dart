import 'package:injectable/injectable.dart';

import '../models/sale.dart';
import '../models/sale_response.dart';
import '../utils/network.dart';

abstract class SaleService {
  Future<List<Sale>> getSales();
}

@Injectable(as: SaleService)
class SaleServiceImpl implements SaleService {
  final path = '/sales';

  SaleServiceImpl();

  @override
  Future<List<Sale>> getSales() async {
    var result = await httpClient.get(path);
    return SalesResponse.fromJson(result.data).result;
  }
}
