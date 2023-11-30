import 'package:expense_tracker_app/widgets/expenses.dart';
import 'package:flutter/material.dart';

var kColorScheme =
    ColorScheme.fromSeed(seedColor: const Color.fromARGB(225, 96, 59, 181));
var kDarkScheme = ColorScheme.fromSeed(
    //set pop up dark mode
    brightness: Brightness.dark,
    seedColor: const Color.fromARGB(225, 5, 99, 125));
void main() {
  runApp(MaterialApp(
      darkTheme: ThemeData.dark().copyWith(
        useMaterial3: true,
        colorScheme: kDarkScheme,
        appBarTheme: AppBarTheme(
            backgroundColor: kDarkScheme.onPrimaryContainer,
            foregroundColor: kDarkScheme.primaryContainer),
        cardTheme: CardTheme(
          color: kDarkScheme.secondaryContainer,
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              backgroundColor: kDarkScheme.primaryContainer),
        ),
        textTheme: ThemeData().textTheme.copyWith(
            titleLarge:
                const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            labelLarge: const TextStyle(fontSize: 13, color: Colors.white),
            labelMedium: const TextStyle(fontSize: 10, color: Colors.white)),
      ),
      theme: ThemeData().copyWith(
          useMaterial3: true,
          colorScheme: kColorScheme,
          appBarTheme: AppBarTheme(
              backgroundColor: kColorScheme.onPrimaryContainer,
              foregroundColor: kColorScheme.primaryContainer),
          cardTheme: CardTheme(
            color: kColorScheme.secondaryContainer,
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          ),
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
                backgroundColor: kColorScheme.primaryContainer),
          ),
          textTheme: ThemeData().textTheme.copyWith(
              titleLarge:
                  const TextStyle(fontSize: 14, fontWeight: FontWeight.bold))),
      themeMode: ThemeMode.system,
      home: const Expenses()));
}
