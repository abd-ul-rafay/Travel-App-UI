import 'package:flutter/material.dart';
import 'package:travel_app/constants.dart';

class StatusBar extends StatelessWidget {
  const StatusBar({Key? key, required this.size}) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(myDouble),
      child: RichText(
          text: TextSpan(
              style: Theme.of(context).textTheme.bodyMedium,
              children: const [
                TextSpan(text: 'Top Tours\n', style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold)),
                TextSpan(text: 'For Your Request', style: TextStyle(fontSize:24, )),
              ]
          )
      ),
    );
  }
}
