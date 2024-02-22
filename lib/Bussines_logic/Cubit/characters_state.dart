part of 'characters_cubit.dart';

@immutable
@immutable
abstract class CharactersState {}

class CharactersInitial extends CharactersState {}

class CharactersLoaded extends CharactersState {
  final List<Character> characters;

  CharactersLoaded(this.characters);
}

class CharactersFailure extends CharactersState {
  final String failureMessage;

  CharactersFailure(this.failureMessage);
}
