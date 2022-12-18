import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'src/blocs/home/home_cubit.dart';
import 'src/screens/product_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Product DB',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: BlocProvider<HomeCubit>(
        create: (context) => HomeCubit(),
        child: const MyHomePage(title: 'Product DB'),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: () async => await _refresh(),
            tooltip: 'Refresh products',
          )
        ],
      ),
      body: const ProductList(),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          String url = await FlutterBarcodeScanner.scanBarcode(
              '#000080', 'Cancel', false, ScanMode.QR);

          if (url.startsWith('http')) {
            // add products using invoid url
          }
        },
        tooltip: 'Add',
        child: const Icon(Icons.add),
      ),
    );
  }

  Future<void> _refresh() async {
    context.read<HomeCubit>().refresh();
  }
}
