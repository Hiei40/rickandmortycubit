import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rickandmortycubit/Bussines_logic/Cubit/characters_cubit.dart';
import 'package:rickandmortycubit/Constans/Strings.dart';
import 'package:rickandmortycubit/data/Web_services/characters_web_services.dart';
import 'package:rickandmortycubit/data/repository/charctersrepository.dart';

import 'Presentaion/screens/CharcterDetailsScreen.dart';
import 'Presentaion/screens/Charcters_screen.dart';


class AppRouter {
  late CharactersRepository charactersRepository;
  late CharactersCubit charactersCubit;
  AppRouter() {
    charactersRepository = CharactersRepository(CharctersWebServices());
    charactersCubit = CharactersCubit(charactersRepository);
  }
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case allCharactersScreen: // Corrected variable name and casing
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
              create: (BuildContext context) => charactersCubit,
              child: CharactersScreen(),));
      case characterDetailsScreen: // Corrected variable name and casing
        return MaterialPageRoute(
            builder: (_) => const CharctersDetailsScreen());

    }
  }
}