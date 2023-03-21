import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';
import '../blocs/sale/sale_cubit.dart';
import '../models/sale.dart';
import 'sale_details.dart';
import 'sale_item.dart';

class SaleList extends StatelessWidget {
  const SaleList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    return BlocConsumer<SaleCubit, SaleState>(
      listener: (context, state) {
        state.maybeWhen(
          error: (message) => _showSnackBar(context, message),
          orElse: () {},
        );
      },
      builder: (context, state) {
        return SafeArea(
          child: state.maybeWhen(
            loading: () => Center(
              child: Lottie.asset(
                'assets/loading.json',
                width: screenWidth / 2,
              ),
            ),
            success: (sales) => Container(
              color: Colors.white,
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: sales.length,
                itemBuilder: (BuildContext context, int index) {
                  Sale sale = sales[index];
                  return InkWell(
                    onTap: () => Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => SaleDetails(
                          saleId: sale.id,
                        ),
                      ),
                    ),
                    child: SaleItem(
                      sale: sale,
                    ),
                  );
                },
              ),
            ),
            orElse: () => const Center(),
          ),
        );
      },
    );
  }

  ScaffoldFeatureController<SnackBar, SnackBarClosedReason> _showSnackBar(
      BuildContext context, String message) {
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
      ),
    );
  }
}
