import 'package:anim_search_bar/anim_search_bar.dart';
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
  final TextEditingController _textController = TextEditingController();

  @override
  void initState() {
    super.initState();

    _textController.addListener(() {
      final String text = _textController.text;
      _filter(text);
    });
  }

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(widget.title),
        actions: [
          AnimSearchBar(
            width: screenWidth * 0.6,
            rtl: true,
            autoFocus: true,
            textController: _textController,
            searchIconColor: Colors.purple,
            textFieldIconColor: Colors.purple,
            suffixIcon: const Icon(
              Icons.abc,
              color: Colors.white,
              size: 0,
            ),
            onSuffixTap: () {},
            onSubmitted: (_) {},
          )
        ],
      ),
      body: RefreshIndicator(
        onRefresh: _refresh,
        child: const ProductList(),
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
    );
  }

  Future<void> _refresh() async {
    context.read<HomeCubit>().load();
  }

  Future<void> _filter(String name) async {
    context.read<HomeCubit>().filter(name);
  }
}
