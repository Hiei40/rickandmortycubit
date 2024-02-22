import 'package:rickandmortycubit/data/models/charcters.dart';
import '../Web_services/characters_web_services.dart';

class CharactersRepository {
  final CharctersWebServices charactersWebServices;

  CharactersRepository(this.charactersWebServices);

  Future<List<Character>> getAllCharacters() async {
    final characters = await charactersWebServices.getAllCharacters();

    return List<Character>.from(
        (characters["results"] as List).map((e) => Character.fromJson(e)));
  }
}
