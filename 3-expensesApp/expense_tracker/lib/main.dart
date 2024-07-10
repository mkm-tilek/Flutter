import 'package:flutter/material.dart';
import 'package:expense_tracker/widgets/expenses.dart';

var kColorScheme = ColorScheme.fromSeed(
  seedColor: const Color.fromARGB(255, 96, 59, 181),
);

void main() {
  runApp(MaterialApp(
    // theme: ThemeData().copyWith(useMaterial3: true, ... )
    theme: ThemeData().copyWith(
        // scaffoldBackgroundColor: Colors.amber,
        colorScheme: kColorScheme,
        appBarTheme: const AppBarTheme().copyWith(
          foregroundColor: kColorScheme.primaryContainer,
          backgroundColor: kColorScheme.onPrimaryContainer,
        )),
    home: const Expenses(),
  ));
}
