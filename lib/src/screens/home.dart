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

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this, initialIndex: 0);
    _tabController.addListener(_switchTabIndex);
  }

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
        body: TabBarView(
          controller: _tabController,
          children: const [
            ProductPage(),
            SalePage(),
          ],
        ),
        floatingActionButton: _tabController.index == 0
            ? FloatingActionButton(
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
              )
            : Container(),
      ),
    );
  }

  Widget renderNavigationBar() {
    return Container(
      color: Colors.purple,
      child: TabBar(
        controller: _tabController,
        indicatorSize: TabBarIndicatorSize.tab,
        tabs: const [
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

  void _switchTabIndex() {
    setState(() {});
  }
}
