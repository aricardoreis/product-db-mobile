import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../blocs/home/home_cubit.dart';
import '../models/product.dart';
import '../widgets/loading.dart';
import 'product_details.dart';
import 'product_item.dart';

class ProductList extends StatelessWidget {
  const ProductList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeCubit, HomeState>(
      listener: (context, state) {
        state.maybeWhen(
          error: (message) => _showSnackBar(context, message),
          orElse: () {},
        );
      },
      builder: (context, state) {
        return SafeArea(
          child: state.maybeWhen(
              loading: () => const Center(child: Loading()),
              success: (products) => Container(
                    color: Colors.white,
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: products.length,
                      itemBuilder: (BuildContext context, int index) {
                        Product product = products[index];
                        return InkWell(
                          onTap: () => Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => ProductDetails(
                                product: product,
                              ),
                            ),
                          ),
                          child: ProductItem(
                            product: product,
                          ),
                        );
                      },
                    ),
                  ),
              orElse: () => const Center()),
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
