import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'injection.dart';
import 'src/blocs/home/home_cubit.dart';
import 'src/blocs/sale/sale_cubit.dart';
import 'src/screens/home.dart';

void main() {
  configureDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

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
        child: const HomePage(),
      ),
    );
  }
}
