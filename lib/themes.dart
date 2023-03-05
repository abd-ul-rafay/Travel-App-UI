
import 'package:flutter/material.dart';

ThemeData lightTheme(BuildContext context) {
  return ThemeData.light().copyWith(
    scaffoldBackgroundColor: Colors.white,
    iconTheme: const IconThemeData(color: Colors.black),
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.white,
      iconTheme: IconThemeData(
        color: Colors.black
      )
    ),
    textTheme: Theme.of(context).textTheme.apply(bodyColor: Colors.black, fontFamily:'Unbounded'),
    dividerTheme: const DividerThemeData(
      color: Colors.black,
      thickness: 1
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      selectedIconTheme: IconThemeData(color: Colors.black),
    ),
    colorScheme: const ColorScheme.light(
      primary: Colors.white,
      secondary: Colors.grey,
    )
  );
}

ThemeData darkTheme(BuildContext context) {
  return ThemeData.dark().copyWith(
    scaffoldBackgroundColor: Colors.black,
    iconTheme: const IconThemeData(color: Colors.white),
    textTheme: Theme.of(context).textTheme.apply(bodyColor: Colors.white, fontFamily:'Unbounded'),
    appBarTheme: const AppBarTheme(
        backgroundColor: Colors.black,
        iconTheme: IconThemeData(
            color: Colors.white
        )
    ),
    dividerTheme: const DividerThemeData(
        color: Colors.white,
        thickness: 1
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      selectedIconTheme: IconThemeData(color: Colors.white),
      backgroundColor: Colors.black
    ),
    colorScheme: ColorScheme.dark(
        primary: Colors.black,
        secondary: Colors.grey.shade900
    )
  );
}
