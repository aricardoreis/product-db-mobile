import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'injection.dart';
import 'src/blocs/sale/sale_cubit.dart';
import 'src/screens/product_page.dart';
import 'src/blocs/home/home_cubit.dart';
import 'src/screens/sale_page.dart';

void main() {
  configureDependencies();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Product DB',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: MultiBlocProvider(
        providers: [
          BlocProvider<HomeCubit>(
            create: (context) => locator.get<HomeCubit>(),
          ),
          BlocProvider<SaleCubit>(
            create: (context) => locator.get<SaleCubit>(),
          )
        ],
        child: DefaultTabController(
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
        ),
      ),
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
