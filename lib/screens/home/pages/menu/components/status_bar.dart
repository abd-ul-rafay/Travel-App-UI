import 'package:flutter/material.dart';
import 'package:travel_app/constants.dart';

class StatusBar extends StatelessWidget {
  const StatusBar({Key? key, required this.size}) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 1,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: myDouble),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,

            children: [
              RichText(
                  text: TextSpan(
                    style: Theme.of(context).textTheme.bodyMedium,
                    children: [
                      // we will use size.width to give font-size to make it responsive
                      TextSpan(text: 'Plan\n', style: TextStyle(fontSize: size.width * 0.08, fontWeight: FontWeight.w700)),
                      TextSpan(text: 'next trip', style: TextStyle(fontSize: size.width * 0.07,)),
                    ]
                  )
              ),
              const VerticalDivider(indent: 25.0, endIndent: 25.0,),
              RichText(
                  text: TextSpan(
                      style: Theme.of(context).textTheme.bodyMedium,
                      children: [
                        TextSpan(text: '15 ', style: TextStyle(fontSize: size.width * 0.06, fontWeight: FontWeight.w700)),
                        TextSpan(text: 'new\n', style: TextStyle(fontSize: size.width * 0.05, fontWeight: FontWeight.w700)),
                        TextSpan(text: 'locations', style: TextStyle(fontSize: size.width * 0.04)),
                      ]
                  )
              ),
            ],
          ),
        )
    );
  }
}
