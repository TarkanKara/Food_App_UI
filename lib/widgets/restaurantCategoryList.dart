import 'package:flutter/material.dart';

class RestaurantCategoryList extends StatefulWidget {
  final String kategoriText;
  const RestaurantCategoryList({super.key, required this.kategoriText});

  @override
  State<RestaurantCategoryList> createState() => _RestaurantCategoryListState();
}

class _RestaurantCategoryListState extends State<RestaurantCategoryList> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {});
      },
      child: Container(
        height: 45,
        width: 85,
        margin: const EdgeInsets.all(10),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          border: Border.all(width: 1, color: Colors.black),
          borderRadius: const BorderRadius.all(
            Radius.circular(5),
          ),
        ),
        child: Text(widget.kategoriText),
      ),
    );
  }
}