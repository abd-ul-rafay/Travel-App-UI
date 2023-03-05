import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/screens/home/pages/favourite/favourite_page.dart';
import 'package:travel_app/screens/home/pages/menu/menu_page.dart';
import 'package:travel_app/screens/home/pages/search/search_page.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _pageSelected = 0; // default first page
  final _pages = const [MenuPage(), SearchPage(), FavouritePage()];
  final _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: buildBottomNavigationBar(),

      body: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          setState(() {
            _pageSelected = index;
          });
        },
        children: _pages,
      )
    );
  }

  BottomNavigationBar buildBottomNavigationBar() {
    return BottomNavigationBar(
      currentIndex: _pageSelected,
      onTap: (index) {
        setState(() {
          _pageSelected = index;
          _pageController.animateToPage(_pageSelected, duration: const Duration(milliseconds: 200), curve: Curves.linear);
        });
      },

      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.search), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.bookmark_border), label: ''),
      ],
    );
  }
}
