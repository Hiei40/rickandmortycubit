import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../data/models/charcters.dart';
import '../../data/repository/charctersrepository.dart';

part 'characters_state.dart';

class CharactersCubit extends Cubit<CharactersState> {
  final CharactersRepository charactersRepository;
  late List<Character> characters; // Declare characters variable

  CharactersCubit(this.charactersRepository) : super(CharactersInitial());

  Future<void> getAllCharacters() async {
    try {
      final List<Character> loadedCharacters = await charactersRepository.getAllCharacters();
      characters = loadedCharacters; // Assign loaded characters to the characters variable
      emit(CharactersLoaded(characters: characters));
    } catch (error) {
      // Handle error
    }
  }
}
