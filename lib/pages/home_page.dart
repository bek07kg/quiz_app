import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tapshyrma07_flutter/components/quiz_button.dart';
import 'package:tapshyrma07_flutter/components/result_button.dart';
import 'package:tapshyrma07_flutter/model/quiz_model.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePage createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  int index = 0;
  List answers = <bool>[];
  List trueAnswers = <bool>[];
  List falseAnswers = <bool>[];

  void chekc(bool value) {
    if (quizzes[index].answer == value) {
      answers.add(true);
      trueAnswers.add(true);
    } else {
      answers.add(false);
      falseAnswers.add(false);
    }
    setState(() {
      if (quizzes[index] == quizzes.last) {
        showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: const Text(
                  "Сиз бул тесттен ...",
                ),
                content: Text(
                    "Туура жооптор ${trueAnswers.length}. Ката жооптор ${falseAnswers.length}"),
                actions: [
                  TextButton(
                    onPressed: () {
                      setState(() {
                        index = 0;
                        answers.clear();
                        trueAnswers.clear();
                        falseAnswers.clear();
                        Navigator.pop(context);
                      });
                    },
                    child: const Text(
                      "Жаныдан баштоо",
                    ),
                  ),
                ],
              );
            });
      } else {
        index++;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff212121),
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text(
          "Тапшырма - 07",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w900,
            fontSize: 24.0,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Spacer(),
            Text(
              quizzes[index].question,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 30.0,
              ),
            ),
            const Spacer(),
            QuizButton(
                quizButton: true,
                press: (variable) {
                  chekc(variable);
                }),
            const SizedBox(height: 20.0),
            QuizButton(
                quizButton: false,
                press: (variable) {
                  chekc(variable);
                }),
            const SizedBox(height: 50.0),
            SizedBox(
              height: 40.0,
              child: ListView.builder(
                  itemCount: answers.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, i) {
                    return answers[i]
                        ? const ResultButton(resultButton: true)
                        : const ResultButton(resultButton: false);
                  }),
            ),
            const SizedBox(height: 50.0),
          ],
        ),
      ),
    );
  }
}
