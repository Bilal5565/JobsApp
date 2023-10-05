import 'package:flutter/material.dart';
import 'package:laravel_app/jobs/bottomPages/favorite_page.dart';
import 'package:laravel_app/jobs/bottomPages/home_page.dart';
import 'package:laravel_app/jobs/bottomPages/premium_page.dart';
import 'package:laravel_app/jobs/bottomPages/profile_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  PageController _page = PageController();
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _page,
        onPageChanged: (page) {
          setState(() {
            currentPage = page;
          });
        },
        children: const [
          HomePage(),
          FavoritePage(),
          PremiumPage(),
          ProfilePage()
        ],
      ),
      backgroundColor: const Color.fromARGB(255, 9, 2, 35),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: const Color.fromARGB(255, 8, 0, 36),
          selectedItemColor: Colors.lightGreen,
          unselectedItemColor: Colors.grey,
          showUnselectedLabels: true,
          iconSize: 30,
          elevation: 5,
          currentIndex: currentPage,
          onTap: (value) {
            setState(() {
              currentPage = value;
              _page.animateToPage(value,
                  duration: const Duration(microseconds: 500),
                  curve: Curves.easeInOut);
            });
          },
          items: const [
            BottomNavigationBarItem(
                activeIcon: Icon(Icons.home_filled),
                icon: Icon(
                  Icons.home,
                ),
                label: 'Home'),
            BottomNavigationBarItem(
                activeIcon: Icon(Icons.star),
                icon: Icon(
                  Icons.star_border,
                ),
                label: 'Favorite'),
            BottomNavigationBarItem(
                activeIcon: Icon(Icons.diamond_rounded),
                icon: Icon(
                  Icons.diamond_outlined,
                ),
                label: 'Premium'),
            BottomNavigationBarItem(
                activeIcon: Icon(
                  Icons.person_2,
                ),
                icon: Icon(
                  Icons.person_2_outlined,
                ),
                label: 'Profile'),
          ]),
    );
  }
}
