import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Loading extends StatelessWidget {
  const Loading({super.key});

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    return Lottie.asset(
      'assets/loading.json',
      width: screenWidth / 2,
    );
  }
}
