import 'package:movie_app/utils/Constants.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Genre{
  int id;
  String name;

  Genre({this.id, this.name});

  factory Genre.fromJson(Map<String, dynamic> json){
    return Genre(id: json['id'], name: json['name']);
  }

  Future<List<Genre>> getGenre() async {
    String apiURL = Constants.baseURL + 'genre/movie/list?api_key='+ Constants.baseAPIKEY;
    var apiResult = await http.get(apiURL);

    if (apiResult.statusCode == 200) {
      var jsonResponse = json.decode(apiResult.body);

      List<dynamic> listGenre = (jsonResponse as Map<String, dynamic>)['genres'];
      List<Genre> genres = [];
      for (int i = 0; i < listGenre.length; i++) {
        genres.add(Genre.fromJson(listGenre[i]));
      }

      return genres;
    }else{
      throw Exception('Failed Load Genres API');
    }
  }
}