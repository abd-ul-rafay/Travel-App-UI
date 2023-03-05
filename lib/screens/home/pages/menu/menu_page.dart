import 'package:flutter/material.dart';
import 'package:travel_app/screens/home/pages/menu/components/recommended_places_view.dart';
import 'components/header.dart';
import 'components/status_bar.dart';
import 'components/vertical_places_view.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    var size = MediaQuery.of(context).size;

    return SafeArea(
      child: Column(
        children: [
          // all children are wrapped with Expanded with flex 1, 1, 3, 4 respectively
          Header(size: size), // like an appbar
          StatusBar(size: size),
          RecommendedPlacesView(size: size),
          VerticalPlacesView(size: size),
        ],
      )
    );
  }
}
