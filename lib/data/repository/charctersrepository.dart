import 'package:rickandmortycubit/data/models/charcters.dart';

import '../Web_services/characters_web_services.dart';
class CharactersRepository {
  final CharctersWebServices charactersWebServices;

  CharactersRepository(this.charactersWebServices);

  Future<List<Character>> getAllCharacters() async {
    final characters = await charactersWebServices.getAllCharacters();
    return characters.map<Character>((e) => Character.fromJson(e)).toList();
  }
}