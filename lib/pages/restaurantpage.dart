import 'package:flutter/material.dart';

//Widgets
import '../widgets/homeRestaurantList.dart';
import '../widgets/restaurantCategoryList.dart';
import '../widgets/restuarantCategoryList.dart';
import '../widgets/stackBotton.dart';

class RestaurantPage extends StatefulWidget {
  const RestaurantPage({super.key});

  @override
  State<RestaurantPage> createState() => _RestaurantPageState();
}

class _RestaurantPageState extends State<RestaurantPage> {
  List<String> foodN = [
    "Burger",
    "Fries",
    "Coac",
    "Meals",
    "Burger",
  ];
  final List<String> foodImage = [
    "assets/images/RestaurantList.png",
    "assets/images/homeRestaurantList.png",
    "assets/images/restuarantt.png",
    "assets/images/resturant2.png",
    "assets/images/restuarant3.png",
  ];
  @override
  Widget build(BuildContext context) {
    double widhtt = MediaQuery.of(context).size.width;
    double heightt = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: widhtt,
                height: heightt / 10 * 3,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/homeRestaurantList.png"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Stack(
                  children: const [
                    //START - StackButton Widget
                    StackButton(
                      iconn: Icons.arrow_back_ios_sharp,
                      leftt: 10,
                      righttt: null,
                    ),
                    StackButton(
                      iconn: Icons.favorite,
                      leftt: null,
                      righttt: 10,
                    ),
                    //END - StackButton Widget
                  ],
                ),
              ),
              Container(
                height: heightt / 10 * 8.1,
                width: double.infinity,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(45),
                    topRight: Radius.circular(45),
                  ),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 35,
                    left: 5,
                    right: 5,
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: const [
                          Text(
                            "Burger King",
                            style: TextStyle(
                              color: Color(0xff010E16),
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: SizedBox(
                          width: widhtt / 10 * 7,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              SizedBox(
                                width: 30,
                                child: Image.asset(
                                  "assets/images/star.png",
                                ),
                              ),
                              const TextWidget(textt: "4.5"),
                              const SizedBox(width: 15),
                              SizedBox(
                                width: 23,
                                child: Image.asset(
                                  "assets/images/clock.png",
                                ),
                              ),
                              const TextWidget(textt: "25-35 mins"),
                              const SizedBox(width: 20),
                              SizedBox(
                                width: 25,
                                child: Image.asset(
                                  "assets/images/dot.png",
                                ),
                              ),
                              const TextWidget(textt: "8 km"),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      SizedBox(
                        height: 50,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: foodN.length,
                          itemBuilder: (context, index) {
                            //START - RestaurantCategoryList Widget
                            return RestaurantCategoryList(
                              kategoriText: foodN[index],
                            );
                            //END - RestaurantCategoryList Widget
                          },
                        ),
                      ),
                      const SizedBox(height: 20),
                      SizedBox(
                        height: 400,
                        child: ListView.builder(
                          scrollDirection: Axis.vertical,
                          itemCount: foodImage.length,
                          itemBuilder: (context, index) {
                            //START - RestaurantList Widget
                            return RestaurantListWidget(
                              imageAssetName: foodImage[index],
                              imageText: foodN[index],
                            );
                            //END - RestaurantList Widget
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
