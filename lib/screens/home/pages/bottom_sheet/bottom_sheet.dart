import 'package:flutter/material.dart';
import 'package:travel_app/constants.dart';
import '../../../../models/place.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// this function is using in three places with same working so we make it here
void showingModalBottomSheet(BuildContext context, WidgetBuilder builder, Place place) {
  showModalBottomSheet(
    context: context,
    builder: builder,
    isScrollControlled: true
  );
}

Widget bottomSheet(Place place) {

  var _controller = PageController();

  return DraggableScrollableSheet(
    initialChildSize: 0.9,
    minChildSize: 0.75,
    maxChildSize: 0.9,
    builder: (BuildContext context, ScrollController scrollController) => Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: ListView(
        controller: scrollController,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(place.name, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                const SizedBox(height: myDouble,),
                SizedBox(
                  width: 275,
                  height: 400,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: PageView(
                      controller: _controller,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(30),
                          child: Image.asset(
                            place.imagePrimary,
                            fit: BoxFit.cover,
                            width: MediaQuery.of(context).size.width * 0.6,
                            height: MediaQuery.of(context).size.height * 0.4,
                          ),
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(30),
                          child: Image.asset(
                            place.imageSecondary,
                            fit: BoxFit.cover,
                            width: MediaQuery.of(context).size.width * 0.6,
                            height: MediaQuery.of(context).size.height * 0.4,
                          ),
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(30),
                          child: Image.asset(
                            place.imageTertiary,
                            fit: BoxFit.cover,
                            width: MediaQuery.of(context).size.width * 0.6,
                            height: MediaQuery.of(context).size.height * 0.4,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 10,),
                SmoothPageIndicator(
                  controller: _controller,
                  count: 3,
                  effect: ExpandingDotsEffect(
                    activeDotColor: Theme.of(context).iconTheme.color!
                  ),
                ),

                const SizedBox(height: 10,),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('${place.name}\n${place.place}', style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
                SizedBox(height: 10.0,),
                Text(place.details),
                SizedBox(height: 20.0,),
                Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).iconTheme.color!,
                    borderRadius: BorderRadius.circular(20)
                  ),
                  padding: EdgeInsets.all(7.5),
                  width: double.infinity,
                  child: TextButton(
                      onPressed: () {},
                      child: const Text('Register'),
                      style: ButtonStyle(
                        overlayColor: MaterialStateProperty.all(Colors.transparent),
                      ),
                  ),
                )
              ],
            ),
          ],
        ),
    ),
  );
}
