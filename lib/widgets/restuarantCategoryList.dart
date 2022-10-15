import 'package:flutter/material.dart';

class RestaurantListWidget extends StatelessWidget {
  final String imageAssetName;
  final String imageText;
  const RestaurantListWidget({
    Key? key,
    required this.imageAssetName,
    required this.imageText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.all(
            Radius.circular(20),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.5),
              spreadRadius: 0.2,
              blurRadius: 20,
              offset: const Offset(0, 3),
            )
          ]),
      margin: const EdgeInsets.only(left: 10, right: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 95,
            height: 95,
            margin: const EdgeInsets.only(right: 10),
            child: Image.asset(imageAssetName),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    imageText,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                    ),
                  ),
                  const SizedBox(width: 10),
                  Row(
                    children: [
                      SizedBox(
                        height: 23,
                        child: Image.asset("assets/images/restuarantStar.png"),
                      ),
                      const SizedBox(width: 5),
                      const Text(
                        "4.5",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Color(0xffB3B3B3),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              const SizedBox(
                width: 180,
                child: Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
                  style: TextStyle(
                    color: Color(0xff9B9B9B),
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Row(
                children: const [
                  Text(
                    "\$",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff010E16),
                    ),
                  ),
                  SizedBox(width: 5),
                  Text(
                    "7",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff010E16),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 28,
                    width: 28,
                    alignment: Alignment.center,
                    margin: const EdgeInsets.only(right: 5),
                    decoration: const BoxDecoration(
                      color: Colors.black,
                    ),
                    child: const Text(
                      "-",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 25,
                      ),
                    ),
                  ),
                  const Text(
                    "1",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      height: 28,
                      width: 28,
                      margin: const EdgeInsets.only(left: 5),
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(
                        color: Colors.black,
                      ),
                      child: const Text(
                        "+",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 25,
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}