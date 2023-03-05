import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:travel_app/screens/home/home_screen.dart';
import 'package:travel_app/themes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lightTheme(context),
      darkTheme: darkTheme(context),

      home: const HomeScreen()
    );
  }
}
