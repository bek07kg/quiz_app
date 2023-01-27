import 'package:flutter/material.dart';
import 'package:tapshyrma07_flutter/pages/home_page.dart';

class JetinchiTapshyrma extends StatelessWidget {
  const JetinchiTapshyrma({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
