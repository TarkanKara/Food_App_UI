import 'package:flutter/material.dart';

class LoginButtonWidget extends StatelessWidget {
  final Function? onTapp;
  final Color colorss, textColor;
  final String textt;

  const LoginButtonWidget({
    Key? key,
    this.onTapp,
    required this.colorss,
    required this.textt,
    required this.textColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapp;
        //Navigator.push()
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Container(
          width: double.infinity,
          height: 66,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: colorss,
            border: Border.all(
              style: BorderStyle.solid,
              width: 2,
            ),
            borderRadius: const BorderRadius.all(Radius.circular(20)),
          ),
          child: Text(
            textt,
            style: TextStyle(
                fontSize: 30,
                fontFamily: "InriaSerif",
                fontWeight: FontWeight.bold,
                color: textColor),
          ),
        ),
      ),
    );
  }
}