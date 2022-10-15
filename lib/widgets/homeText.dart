import 'package:flutter/material.dart';

class Textt extends StatelessWidget {
  final String textt;
  const Textt({
    Key? key,
    required this.textt,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20, right: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            textt,
            style: const TextStyle(
              color: Color(0xff010E16),
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Text(
            "Show all",
            style: TextStyle(color: Color(0xff459FCA)),
          ),
        ],
      ),
    );
  }
}