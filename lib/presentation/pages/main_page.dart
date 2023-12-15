import 'package:flutter/material.dart';
import 'package:mevah_hotel_app/presentation/pages/home_page.dart';
import 'package:mevah_hotel_app/presentation/pages/search_page.dart';
import 'package:mevah_hotel_app/shared/themes.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    buildBody() {
      switch (currentIndex) {
        case 0:
          return const HomePage();
        case 1:
          return const SearchPage();
        case 2:
          return const HomePage();
        case 3:
          return const HomePage();
        default:
          return const HomePage();
      }
    }

    return Scaffold(
      body: buildBody(),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        elevation: 10,
        selectedLabelStyle: primaryTextStyle.copyWith(fontSize: 12),
        unselectedLabelStyle: greyMenuTextStyle,
        currentIndex: currentIndex,
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/icon_home.png',
              width: 24,
              color: currentIndex == 0 ? primaryColor : greyMenuColor,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/icon_search.png',
              width: 24,
              color: currentIndex == 1 ? primaryColor : greyMenuColor,
            ),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/icon_order.png',
              width: 24,
              color: currentIndex == 2 ? primaryColor : greyMenuColor,
            ),
            label: 'Order',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/icon_profile.png',
              width: 24,
              color: currentIndex == 3 ? primaryColor : greyMenuColor,
            ),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
