import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../blocs/sale/sale_cubit.dart';
import 'sale_list.dart';

class SalePage extends StatefulWidget {
  const SalePage({Key? key}) : super(key: key);
  @override
  State<SalePage> createState() => _SalePageState();
}

class _SalePageState extends State<SalePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: _refresh,
      child: const SaleList(),
    );
  }

  Future<void> _refresh() async {
    context.read<SaleCubit>().load();
  }
}
