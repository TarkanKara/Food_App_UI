import 'package:flutter/material.dart';

class login_text_widget extends StatelessWidget {
  final String logintextt;
  final Color logintextcolor;
  final double textfontsize;
  const login_text_widget({
    Key? key,
    required this.logintextt,
    required this.logintextcolor,
    required this.textfontsize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Text(
        logintextt,
        style: TextStyle(
          color: logintextcolor,
          fontFamily: "InriaSerif",
          fontSize: textfontsize,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}