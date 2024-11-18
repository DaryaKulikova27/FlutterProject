import 'package:flutter/material.dart';

final darkTheme = ThemeData(
  colorScheme: ColorScheme.fromSeed(seedColor: Colors.yellow),
  useMaterial3: true,
  dividerColor: Colors.white24,
  appBarTheme: const AppBarTheme(
    backgroundColor: Color.fromARGB(255, 67, 65, 65),
    titleTextStyle: TextStyle(
      color: Colors.white,
      fontSize: 20,
      fontWeight: FontWeight.w700,
    ),
    iconTheme: IconThemeData(color: Colors.white),
  ),
  listTileTheme: const ListTileThemeData(iconColor: Colors.white),
  primarySwatch: Colors.yellow,
  scaffoldBackgroundColor: const Color.fromARGB(255, 67, 65, 65),
  textTheme: TextTheme(
    bodyMedium: const TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.w500,
      fontSize: 20
    ),
    labelSmall: TextStyle(
      color: Colors.white.withOpacity(0.6),
      fontWeight: FontWeight.w700,
      fontSize: 14
    )
  )
);