import 'package:dio/dio.dart';
import 'package:rickandmortycubit/Constans/Strings.dart';

class CharctersWebServices {
  late Dio dio;

  CharctersWebServices() {
    BaseOptions options = BaseOptions(
      baseUrl: baseUrl,
      receiveDataWhenStatusError: true,
      connectTimeout: const Duration(milliseconds: 60000),
      receiveTimeout: const Duration(milliseconds: 60000),
    );

    dio = Dio(options);
  }

  Future<dynamic> getAllCharacters() async {
    try {
      Response response = await dio.get('character');
      print(response.data.toString());

      return response.data;
    } catch (e) {
      print(e.toString());
      return [];
    }
  }

  // Future<List<CharacterModel>> getAllCharacters() async {
  //   try {
  //     final response = await dio.get('character');
  //     print(response.data.toString());
  //     return List<CharacterModel>.from((response.data["results"] as List).map((e) => CharacterModel.fromJson(e)));
  //   } catch (e) {
  //     print(e.toString());
  //     return [];
  //   }
  // }
}