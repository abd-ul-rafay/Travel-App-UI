import 'package:flutter/material.dart';

import '../../../../../constants.dart';
import '../../../../../models/place.dart';
import '../../bottom_sheet/bottom_sheet.dart';

class GridViewOfPlaces extends StatefulWidget {
  const GridViewOfPlaces({Key? key, required this.size}) : super(key: key);

  final Size size;

  @override
  State<GridViewOfPlaces> createState() => _GridViewOfPlacesState();
}

class _GridViewOfPlacesState extends State<GridViewOfPlaces> {

  var favouritePlaces = [];

  void getFavouritePlaces() {
    for (var i in places) {
      if (!i.isBookmark) {
        favouritePlaces.add(i);
      }
    }
  }

  @override
  void initState() {
    super.initState();
    getFavouritePlaces();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: myDouble),
            child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  childAspectRatio: 0.65,
                  maxCrossAxisExtent: 200,
                  mainAxisSpacing: myDouble,
                  crossAxisSpacing: myDouble,
                ),
                itemCount: favouritePlaces.length,
                itemBuilder: (context, index) => GestureDetector(
                  onTap: () => showingModalBottomSheet( // own function
                      context,
                          (context) => bottomSheet(favouritePlaces[index]),
                      favouritePlaces[index]
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(myDouble),
                            child: Stack(
                                children: [
                                  Image.asset(
                                    favouritePlaces[index].imageSecondary,
                                    width: widget.size.width * 0.4,
                                    height: widget.size.height * 0.3,
                                    fit: BoxFit.cover,
                                  ),
                                  Positioned(
                                    top: 10,
                                    right: 10,
                                    child: GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            favouritePlaces[index].isBookmark = !favouritePlaces[index].isBookmark;
                                          });
                                        },
                                        child: Container(
                                          // width: 25.0,
                                          // height: 25.0,
                                            decoration: const BoxDecoration(
                                                color: Colors.white24,
                                                shape: BoxShape.circle
                                            ),
                                            child: favouritePlaces[index].isBookmark ?
                                            const Icon(Icons.favorite_outline, color: Colors.black,)
                                                : const Icon(Icons.favorite, color: Colors.red)
                                        )
                                    ),
                                  )
                                ]
                            ),
                          )
                      ),
                      const SizedBox(height: 10.0,),
                      Text(places[index].name),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text("${favouritePlaces[index].price}/"),
                          Text(favouritePlaces[index].tripDuration, style: const TextStyle(fontSize: 10,),),
                        ],
                      )
                    ],
                  ),
                )
            ),
          )
      );
  }
}
