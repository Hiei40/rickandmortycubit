import 'package:flutter/material.dart';
import 'package:rickandmortycubit/Constans/strings.dart'; // Corrected import statement
import 'package:rickandmortycubit/Presentaion/screens/CharcterDetailsScreen.dart';
import 'package:rickandmortycubit/Presentaion/screens/Charcters_screen.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case allCharactersScreen: // Corrected variable name and casing
        return MaterialPageRoute(builder: (_) => const CharctersScreen());
      case characterDetailsScreen: // Corrected variable name and casing
        return MaterialPageRoute(builder: (_) => const CharctersDetailsScreen());
      default:
        return null; // Return null for routes that are not defined
    }
  }
}