import 'package:flutter/material.dart';

import '../utils/format.dart';

class DateText extends StatelessWidget {
  final DateTime _date;
  const DateText(
    this._date, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(dateToString(_date));
  }
}
