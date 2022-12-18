import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../blocs/home/home_cubit.dart';
import 'product_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
            if (mounted) {
              context.read<HomeCubit>().loadInvoice(url);
            }
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
