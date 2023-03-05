import 'package:flutter/material.dart';
import 'package:travel_app/models/place.dart';

import '../../../../../constants.dart';
import '../../bottom_sheet/bottom_sheet.dart';

class VerticalPlacesView extends StatefulWidget {
  const VerticalPlacesView({Key? key, required this.size}) : super(key: key);

  final Size size;

  @override
  State<VerticalPlacesView> createState() => _VerticalPlacesViewState();
}

class _VerticalPlacesViewState extends State<VerticalPlacesView> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 4,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: myDouble),
          child: ListView.builder(
            itemCount: places.length,
            itemBuilder: (context, index) => GestureDetector(
              onTap: () => showingModalBottomSheet( // own function
                  context,
                      (context) => bottomSheet(places[index]),
                  places[index]
              ),
              child: Padding(
                padding: const EdgeInsets.only(bottom: myDouble),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(myDouble / 2),
                      child: Image.asset(places[index].imagePrimary,
                        width: widget.size.width * 0.25,
                        height: widget.size.width * 0.25,
                        fit: BoxFit.fill,
                      ),
                    ),
                    const SizedBox(width: myDouble,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(places[index].name, style: const TextStyle(fontWeight: FontWeight.bold),),
                        Text(places[index].place),
                        const SizedBox(height: myDouble / 2,),
                        Text(places[index].tripDuration),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        )
    );
  }
}
