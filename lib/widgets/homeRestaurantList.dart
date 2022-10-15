import 'package:flutter/material.dart';

class HomeRestuarantListWidgwet extends StatefulWidget {
  final String assetImageName;
  final String restuarantText;
  final String newText;

  const HomeRestuarantListWidgwet(
      {super.key,
      required this.assetImageName,
      required this.restuarantText,
      required this.newText});

  @override
  State<HomeRestuarantListWidgwet> createState() =>
      _HomeRestuarantListWidgwetState();
}

class _HomeRestuarantListWidgwetState extends State<HomeRestuarantListWidgwet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(25)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(right: 20),
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(widget.assetImageName),
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10),
              Text(
                widget.restuarantText,
                style:
                    const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              Row(
                children: [
                  SizedBox(
                    height: 20,
                    child: Image.asset(
                      "assets/images/star.png",
                    ),
                  ),
                  const SizedBox(width: 5),
                  const TextWidget(textt: "4.5"),
                ],
              ),
              const SizedBox(height: 21),
              Row(
                children: [
                  SizedBox(
                    height: 18,
                    child: Image.asset("assets/images/clock.png"),
                  ),
                  const SizedBox(width: 5),
                  const TextWidget(textt: "20-25 mins"),
                  const SizedBox(width: 20),
                  SizedBox(
                    height: 10,
                    child: Image.asset("assets/images/dot.png"),
                  ),
                  const SizedBox(width: 5),
                  const TextWidget(textt: "7 km"),
                ],
              ),
              const SizedBox(height: 10),
            ],
          ),
          const SizedBox(width: 20),
          Container(
            height: 30,
            width: 55,
            alignment: Alignment.center,
            decoration: const BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(18),
                topRight: Radius.circular(18),
              ),
            ),
            child: Text(
              widget.newText,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                letterSpacing: 1,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class TextWidget extends StatelessWidget {
  final String textt;
  const TextWidget({
    Key? key,
    required this.textt,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      textt,
      style: const TextStyle(color: Color(0xffB3B3B3)),
    );
  }
}