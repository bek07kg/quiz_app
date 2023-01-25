import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Quiz extends StatelessWidget {
  Quiz({Key? key, required this.button}) : super(key: key);

  final bool button;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50.0,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: button ? Colors.green : Colors.red,
        ),
        child: Text(
          button ? "Туура" : "Туура эмес",
          style: TextStyle(
            fontSize: 24.0,
          ),
        ),
      ),
    );
  }
}
