import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ResultButton extends StatelessWidget {
  const ResultButton({Key? key, required this.resultButton}) : super(key: key);

  final bool resultButton;

  @override
  Widget build(BuildContext context) {
    return Icon(
      resultButton ? Icons.check : Icons.close,
      color: resultButton ? Colors.green : Colors.red,
    );
  }
}
