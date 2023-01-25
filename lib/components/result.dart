import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  Result({Key? key, required this.icon}) : super(key: key);

  final bool icon;

  @override
  Widget build(BuildContext context) {
    return Icon(
      icon ? Icons.check : Icons.close,
      color: icon ? Colors.green : Colors.red,
    );
  }
}
