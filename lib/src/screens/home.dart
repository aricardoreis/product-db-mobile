import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../blocs/home/home_cubit.dart';
import 'product_page.dart';
import 'sale_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: const Text('Product DB'),
        ),
        bottomNavigationBar: renderNavigationBar(),
        body: const TabBarView(
          children: [
            ProductPage(),
            SalePage(),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () async {
            String url = await FlutterBarcodeScanner.scanBarcode(
                '#000080', 'Cancel', false, ScanMode.QR);

            if (url.startsWith('http')) {
              if (mounted) {
                context.read<HomeCubit>().loadInvoice(url);
              }
            }
          },
          tooltip: 'Add',
          child: const Icon(Icons.add),
        ),
      ),
      //const HomePage(title: 'Product DB'),
    );
  }

  Widget renderNavigationBar() {
    return Container(
      color: Colors.purple,
      child: const TabBar(
        indicatorSize: TabBarIndicatorSize.tab,
        tabs: [
          Tab(
            text: 'Products',
            icon: Icon(Icons.shopping_bag),
          ),
          Tab(
            text: 'Sales',
            icon: Icon(Icons.shopping_cart),
          ),
        ],
      ),
    );
  }
}
