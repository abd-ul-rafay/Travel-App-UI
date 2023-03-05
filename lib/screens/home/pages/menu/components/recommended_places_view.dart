import 'package:flutter/material.dart';
import 'package:travel_app/models/place.dart';

import '../../../../../constants.dart';
import '../../bottom_sheet/bottom_sheet.dart';

class RecommendedPlacesView extends StatefulWidget {
  const RecommendedPlacesView({Key? key, required this.size}) : super(key: key);

  final Size size;

  @override
  State<RecommendedPlacesView> createState() => _RecommendedPlacesViewState();
}

class _RecommendedPlacesViewState extends State<RecommendedPlacesView>{

  var recommendedPlaces = [places[4], places[6], places[7]];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: Padding(
        padding: const EdgeInsets.only(left: myDouble, bottom: myDouble, top: myDouble),
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: recommendedPlaces.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => GestureDetector(
              onTap: () => showingModalBottomSheet( // own function
                  context,
                  (context) => bottomSheet(recommendedPlaces[index]),
                  places[index]
              ),
              child: Padding(
                padding: const EdgeInsets.only(right: myDouble / 2), // 10
                child: Stack(
                  children: [
                    Container(
                      width: widget.size.width * 1.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(myDouble),
                        image: DecorationImage(
                          image: AssetImage(recommendedPlaces[index].imagePrimary),
                          fit: BoxFit.fitWidth,
                        )
                      ),
                    ),
                    Positioned(
                      bottom: myDouble,
                      left: myDouble,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(recommendedPlaces[index].name, style: const TextStyle(fontSize: 36)),
                          Text(recommendedPlaces[index].place),
                        ],
                      )
                    ),
                    // this is for favourite icon at top-right
                    Positioned(
                      top: myDouble,
                      right: myDouble * 2,
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            recommendedPlaces[index].isBookmark = !recommendedPlaces[index].isBookmark;
                          });
                        },
                        child: Container(
                          width: 35.0,
                          height: 35.0,
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle
                            ),
                            child: recommendedPlaces[index].isBookmark ?
                              const Icon(Icons.favorite_outline, color: Colors.black,)
                              : const Icon(Icons.favorite, color: Colors.red)
                            )
                        ),
                      )
                  ],
                ),
              ),
            ),
        ),
      ),
    );
  }
}
