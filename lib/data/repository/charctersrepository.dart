import '../Web_services/characters_web_services.dart';

class CharctersRepository {
  final CharctersWebServices charctersWebServices;

  CharctersRepository(this.charctersWebServices);

  Future<List<dynamic>> gettallcharcters() async {
    final characters = await charctersWebServices.gettallcharcters();
    return characters.map((e) => (character)=>character.fromJson(character)).toList();
  }
}
