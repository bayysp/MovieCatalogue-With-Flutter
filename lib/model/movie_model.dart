import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:movie_app/utils/Constants.dart';

class MovieModel {
  int id;
  String title;
  double voteAverage;
  String overview;
  String posterPath;
  String backdropPath;
  String releaseDate;
  List<dynamic> genre;

  MovieModel(
      {this.id,
      this.title,
      this.voteAverage,
      this.overview,
      this.posterPath,
      this.backdropPath,
      this.releaseDate,
      this.genre});

  //factory is used to conver from json to object
  factory MovieModel.fromJson(Map<String, dynamic> object) {
    return MovieModel(
        id: object['id'],
        title: object['title'],
        voteAverage: object['vote_average'].toDouble(),
        overview: object['overview'],
        posterPath: object['poster_path'],
        backdropPath: object['backdrop_path'],
        releaseDate: object['release_date'],
        genre: object['genre_ids']);
  }

  Future<List<MovieModel>> getDiscoversMovie() async {
    String apiURL =
        Constants.baseURL + "discover/movie?api_key=" + Constants.baseAPIKEY;
    var apiResult = await http.get(apiURL);

    if (apiResult.statusCode == 200) {
      var jsonResponse = json.decode(apiResult.body);

      // return jsonResponse.map((f) => Movie.fromJson(f)).toList();
      
      List<dynamic> listMovieDiscover = (jsonResponse as Map<String, dynamic>)['results'];
      List<MovieModel> movies = [];

      for(int i=0; i<listMovieDiscover.length; i++){
        movies.add(MovieModel.fromJson(listMovieDiscover[i]));
      }

      return movies;
    } else {
      throw Exception('Failed Load to API');
    }
  }
}
