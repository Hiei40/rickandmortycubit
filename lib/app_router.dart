import 'package:flutter/material.dart';
import 'package:rickandmortycubit/Presentaion/screens/CharcterDetailsScreen.dart';
import 'package:rickandmortycubit/Presentaion/screens/Charcters_screen.dart';

import 'Constans/Strings.dart';

class AppRouter {
  Route ?generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case allcharctersScreen:
        return MaterialPageRoute(builder: (_) => const CharctersScreen());
       // Return null for routes that are not defined
      case charcterDetailsScreen:
        return MaterialPageRoute(builder: (_) => const CharctersDetailsScreen());
    }
  }
}
