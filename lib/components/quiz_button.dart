import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class QuizButton extends StatelessWidget {
  const QuizButton({Key? key, required this.quizButton, required this.press})
      : super(key: key);

  final bool quizButton;
  final void Function(bool) press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50.0,
      child: ElevatedButton(
        onPressed: () => press(quizButton),
        style: ElevatedButton.styleFrom(
          backgroundColor: quizButton ? Colors.green : Colors.red,
        ),
        child: Text(
          quizButton ? "Туура" : "Туура эмес",
          style: const TextStyle(
            fontSize: 24.0,
          ),
        ),
      ),
    );
  }
}
