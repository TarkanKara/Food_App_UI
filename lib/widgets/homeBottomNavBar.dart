import 'package:flutter/material.dart';

class HomeBottomNavBar extends StatefulWidget {
  const HomeBottomNavBar({super.key});

  @override
  State<HomeBottomNavBar> createState() => _HomeBottomNavBarState();
}

class _HomeBottomNavBarState extends State<HomeBottomNavBar> {
  int indexx = 0;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: indexx,
      onTap: (value) {
        setState(() {
          indexx = value;
        });
      },
      items: [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home_sharp,
            color: indexx == 0 ? Colors.black : const Color(0xff7E869E),
          ),
          label: "",
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.favorite_border,
            color: indexx == 1 ? Colors.black : const Color(0xff7E869E),
          ),
          label: "",
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.shopping_cart_outlined,
            color: indexx == 2 ? Colors.black : const Color(0xff7E869E),
          ),
          label: "",
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.person,
            color: indexx == 3 ? Colors.black : const Color(0xff7E869E),
          ),
          label: "",
        ),
      ],
    );
  }
}