import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../data/models/charcters.dart';
import '../../data/repository/charctersrepository.dart';

part 'characters_state.dart';

class CharactersCubit extends Cubit<CharactersState> {
  final CharactersRepository charactersRepository;
  late List<Character> characters;

  CharactersCubit(this.charactersRepository) : super(CharactersInitial());

  Future<List<Character>> getAllCharacters() async {
    final List<Character> loadedCharacters = await charactersRepository.getAllCharacters();
    characters = loadedCharacters;
    emit(CharactersLoaded(characters: characters));
    this.characters = characters;
    return characters;
  }
}
