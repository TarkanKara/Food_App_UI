import 'package:flutter/material.dart';

class StackButton extends StatelessWidget {
  final double? righttt, leftt;
  final IconData iconn;
  const StackButton({
    Key? key,
    required this.righttt,
    required this.leftt,
    required this.iconn,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 0,
      right: righttt,
      left: leftt,
      child: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Container(
          width: 35,
          height: 35,
          margin: const EdgeInsets.only(right: 10, top: 20),
          decoration: BoxDecoration(
            color: Colors.grey.withOpacity(0.8),
            borderRadius: const BorderRadius.all(
              Radius.circular(200),
            ),
          ),
          child: Icon(
            iconn,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
