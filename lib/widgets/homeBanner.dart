import 'package:flutter/material.dart';

class BannerWidget extends StatelessWidget {
  final double bannerWidth;
  final double bannerHeith;
  final String imageAssetName;
  const BannerWidget({
    Key? key,
    required this.bannerWidth,
    required this.bannerHeith,
    required this.imageAssetName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: bannerWidth,
      height: bannerHeith,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(20)),
        image: DecorationImage(
          image: AssetImage(imageAssetName),
        ),
      ),
      child: const Padding(
        padding: EdgeInsets.only(left: 20),
        child: StackWidget(
          bannerStackTextOne: "Get Special Discount",
          bannerStackTextTwo: "up to 75%",
        ),
      ),
    );
  }
}

class StackWidget extends StatelessWidget {
  final String bannerStackTextOne;
  final String bannerStackTextTwo;
  const StackWidget({
    Key? key,
    required this.bannerStackTextOne,
    required this.bannerStackTextTwo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Spacer(),
            Text(
              bannerStackTextOne,
              style: const TextStyle(
                fontSize: 15,
                color: Color(0xff9B9B9B),
                fontWeight: FontWeight.w600,
              ),
            ),
            const Spacer(),
            Text(
              bannerStackTextTwo,
              style: const TextStyle(
                fontSize: 35,
                color: Color(0xffF5F5F5),
                fontWeight: FontWeight.bold,
              ),
            ),
            const Spacer(),
            GestureDetector(
              onTap: () {},
              child: Container(
                width: 120,
                height: 28,
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                child: const Text(
                  "Claim Voucher",
                  style: TextStyle(
                    fontSize: 12,
                    color: Color(0xff010E16),
                    fontWeight: FontWeight.w500,
                    letterSpacing: 0.8,
                  ),
                ),
              ),
            ),
            const Spacer(),
          ],
        ),
      ],
    );
  }
}