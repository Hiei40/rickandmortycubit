import 'package:rickandmortycubit/data/models/charcters.dart';

import '../Web_services/characters_web_services.dart';

class CharactersRepository {
  final CharctersWebServices charactersWebServices; // Corrected type name

  CharactersRepository(this.charactersWebServices);

Future<List<Character>>getAllCharacters() async {
    final characters = await charactersWebServices.getAllCharacters();
    return characters.map((e) => Character.fromJson(e)).toList();
  }
}