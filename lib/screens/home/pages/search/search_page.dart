import 'package:flutter/material.dart';
import 'package:travel_app/constants.dart';
import 'package:travel_app/models/place.dart';

import '../search/components/status_bar.dart';
import 'components/gridview_of_places.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {

    var size = MediaQuery.of(context).size;

    return SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            buildAppBar(),
            StatusBar(size: size,),
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
              child: const Icon(Icons.search)
            ),
            actions: [
              Container(
                margin: const EdgeInsets.only(right: myDouble),
                child: const Icon(Icons.settings_input_composite_outlined)
              )
            ],
          );
  }
}
