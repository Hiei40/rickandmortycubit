part of 'characters_cubit.dart';
@immutable
abstract class CharactersState {}

class CharactersInitial extends CharactersState {}

class CharactersLoaded extends CharactersState {
 final List<Character> characters; // Assuming 'Character' is the correct type name

 CharactersLoaded({required this.characters});
}
