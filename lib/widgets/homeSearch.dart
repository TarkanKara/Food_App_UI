import 'package:flutter/material.dart';

class HomeAppBarSearchWidget extends StatelessWidget {
  const HomeAppBarSearchWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 10,
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 1, right: 20),
        child: Row(
          children: [
            const SearchBarWidget(
                hintText: "Search Your food or Restaurant",
                assetName: "assets/images/Search_light.png"),
            const Spacer(),
            Container(
              width: 56,
              height: 42,
              decoration: const BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 5,
                  ),
                ],
              ),
              child: Image.asset("assets/images/Filter.png"),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}

class SearchBarWidget extends StatelessWidget {
  final String hintText;
  final String assetName;
  const SearchBarWidget({
    Key? key,
    required this.hintText,
    required this.assetName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 270,
      height: 46,
      margin: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 5,
            ),
          ],
          borderRadius: BorderRadius.all(Radius.circular(8))),
      child: TextFormField(
        cursorHeight: 20,
        decoration: InputDecoration(
          focusedBorder: const OutlineInputBorder(),
          border: InputBorder.none,
          hintText: hintText,
          hintStyle: const TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.w400,
          ),
          prefixIcon: Align(
            widthFactor: 1,
            heightFactor: 1,
            child: ImageIcon(
              AssetImage(assetName),
            ),
          ),
        ),
      ),
    );
  }
}
