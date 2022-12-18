import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'injection.dart';
import 'src/screens/home.dart';
import 'src/blocs/home/home_cubit.dart';

void main() {
  configureDependencies();
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
        create: (context) => locator.get<HomeCubit>(),
        child: const HomePage(title: 'Product DB'),
      ),
    );
  }
}
