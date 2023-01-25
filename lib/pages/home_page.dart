import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tapshyrma07_flutter/components/quiz.dart';
import 'package:tapshyrma07_flutter/components/result.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePage createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff212121),
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          "Тапшырма - 07",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w900,
            fontSize: 24.0,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Spacer(),
            Text(
              "Кыргызстанда 7 область барбы?",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 32.0,
              ),
            ),
            Spacer(),
            Quiz(button: true),
            SizedBox(height: 20.0),
            Quiz(button: false),
            SizedBox(height: 50.0),
            Row(
              children: [
                Result(icon: true),
                Result(icon: false),
              ],
            ),
            SizedBox(height: 50.0),
          ],
        ),
      ),
    );
  }
}
