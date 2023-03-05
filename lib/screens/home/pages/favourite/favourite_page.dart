import 'package:flutter/material.dart';

import '../../../../constants.dart';
import '../favourite/components/status_bar.dart';
import '../favourite/components/gridview_of_places.dart';

class FavouritePage extends StatefulWidget {
  const FavouritePage({Key? key}) : super(key: key);

  @override
  State<FavouritePage> createState() => _FavouritePageState();
}

class _FavouritePageState extends State<FavouritePage> {
  @override
  Widget build(BuildContext context) {

    var size = MediaQuery.of(context).size;

    return SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            buildAppBar(),
            SizedBox(height: 10.0,),
            StatusBar(size: size,),
            SizedBox(height: 10.0,),
            GridViewOfPlaces(size: size,)
          ],
        )
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0.0,
      leading: Container(
          margin: const EdgeInsets.only(left: myDouble),
          child: const Icon(Icons.arrow_back)
      ),
      actions: [
        Container(
            margin: const EdgeInsets.only(right: myDouble),
            child: const Icon(Icons.bookmark)
        )
      ],
    );
  }
}
