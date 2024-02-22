import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:meta/meta.dart';

import '../../data/models/charcters.dart';
import '../../data/repository/charctersrepository.dart'; // Corrected typo in import

part 'characters_state.dart';
class CharactersCubit extends Cubit<CharactersState> {
  final CharactersRepository charactersRepository;

  CharactersCubit(this.charactersRepository) : super(CharactersInitial());

  Future<void> getAllCharacters() async {
    try {
      final characters = await charactersRepository.getAllCharacters();
      emit(CharactersLoaded(characters));
    } catch (e) {
      // Handle error if needed
    }
  }
}
