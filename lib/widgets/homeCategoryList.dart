import 'package:flutter/material.dart';

class HomeKategoriCircleAvatarWidgets extends StatelessWidget {
  final double avatarRadius;
  final String assetName;
  final String avatarText;
  const HomeKategoriCircleAvatarWidgets({
    Key? key,
    required this.avatarRadius,
    required this.assetName,
    required this.avatarText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        left: 5,
        right: 5,
      ),
      child: Column(
        children: [
          CircleAvatar(
            radius: avatarRadius,
            child: ClipOval(
              child: Image.asset(
                assetName,
                width: 220,
                height: 220,
                fit: BoxFit.cover,
              ),
            ),
          ),
          //const Spacer(flex: 1),
          Text(
            avatarText,
            style: const TextStyle(
              fontSize: 15,
            ),
          ),
          //const Spacer(flex: 1),
        ],
      ),
    );
  }
}