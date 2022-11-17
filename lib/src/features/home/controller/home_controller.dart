import 'package:api_rick_and_morty/src/features/home/models/rick_and_morty_model.dart';
import 'package:dio/dio.dart';

class HomeController {
  int number = 3;

  List<RickAndMortyModel?> rickAndMorty = [];

  Future<List<RickAndMortyModel?>> getRickAndMorty() async {
    var dio = Dio();
    try {
      var response =
          await dio.get('https://rickandmortyapi.com/api/character/');

      final List<dynamic> body = await response.data['results'];

      return body.map((model) => RickAndMortyModel.fromJson(model)).toList();
    } catch (e) {
      print('erro $e');
      return [];
    }
  }

  void init() async {
    var data = await getRickAndMorty();
    rickAndMorty.addAll(data);
  }
}
