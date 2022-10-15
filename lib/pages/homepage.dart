import 'package:flutter/material.dart';

//Widgets
import '../widgets/homeAppBar.dart';
import '../widgets/homeBanner.dart';
import '../widgets/homeBottomNavBar.dart';
import '../widgets/homeCategoryList.dart';
import '../widgets/homeRestaurantList.dart';
import '../widgets/homeSearch.dart';
import '../widgets/homeText.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> kategoriImage = [
    "assets/images/RestaurantList.png",
    "assets/images/homeRestaurantList.png",
    "assets/images/restuarantt.png",
    "assets/images/resturant2.png",
    "assets/images/restuarant3.png",
  ];
  final List<String> kategoriText = [
    "Supreme",
    "Burger King",
    "Pizzania",
    "Pankcake",
    "Corn",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF5F5F5),
      /* ------------------------Home Page START--------------------------*/
      body: SingleChildScrollView(
        child: Column(
          children: [
            //START - AppBar Widget
            HomeAppBarrWidget(),
            //END - AppBar Widget

            //START - Search Widget
            const HomeAppBarSearchWidget(),
            //END - Search Widget

            //START - Banner Widget
            const BannerWidget(
              bannerWidth: 370,
              bannerHeith: 160,
              imageAssetName: "assets/images/banner.png",
            ),
            //END - Banner Widget

            const SizedBox(height: 10),

            //START Text-Widget
            const Textt(textt: "Categories"),
            //END Text-Widget

            const SizedBox(height: 10),

            //START - ListView
            Container(
              height: 110,
              margin: const EdgeInsets.only(left: 15, right: 15),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: kategoriImage.length,
                itemBuilder: (context, index) {
                  //START - CategoryList Widget
                  return HomeKategoriCircleAvatarWidgets(
                    avatarRadius: 40,
                    assetName: kategoriImage[index],
                    avatarText: kategoriText[index],
                  );
                  //END - CategoryList Widget
                },
              ),
            ),
            //END - ListView

            const SizedBox(height: 10),

            //START Text-Widget
            const Textt(textt: "Restaurant"),
            //END Text-Widget

            const SizedBox(height: 10),

            //START - ListView
            SizedBox(
              height: 300,
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: 5,
                itemBuilder: (context, index) {
                  //START RestaurantCategoryList Widget
                  return HomeRestuarantListWidgwet(
                    assetImageName: kategoriImage[index],
                    restuarantText: kategoriText[index],
                    newText: "New",
                  );
                  //END RestaurantCategoryList Widget
                },
              ),
            ),
            //END - ListView
          ],
        ),
      ),
      //START - Bottom Nav Bar Widget
      bottomNavigationBar: const HomeBottomNavBar(),
      //END - Bottom Nav Bar Widget

      /* -------------------------Home Page END---------------------------*/
    );
  }
}
