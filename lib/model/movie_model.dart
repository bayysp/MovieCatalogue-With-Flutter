import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:movie_app/utils/Constants.dart';

class Movie {
  int id;
  String title;
  double voteAverage;
  String overview;
  String posterPath;
  String backdropPath;
  String releaseDate;

  Movie(
      {this.id,
      this.title,
      this.voteAverage,
      this.overview,
      this.posterPath,
      this.backdropPath,
      this.releaseDate});

  //factory is used to conver from json to object
  factory Movie.fromJson(Map<String, dynamic> object) {
    return Movie(
        id: object['id'],
        title: object['title'],
        voteAverage: object['vote_average'].toDouble(),
        overview: object['overview'],
        posterPath: object['poster_path'],
        backdropPath: object['backdrop_path'],
        releaseDate: object['release_date']);
  }

  Future<List<Movie>> getDiscoversMovie() async {
    String apiURL =
        Constants.baseURL + "discover/movie?api_key=" + Constants.baseAPIKEY;
    var apiResult = await http.get(apiURL);

    if (apiResult.statusCode == 200) {
      var jsonResponse = json.decode(apiResult.body);

      // return jsonResponse.map((f) => Movie.fromJson(f)).toList();
      
      List<dynamic> listMovieDiscover = (jsonResponse as Map<String, dynamic>)['results'];
      List<Movie> movies = [];

      for(int i=0; i<listMovieDiscover.length; i++){
        movies.add(Movie.fromJson(listMovieDiscover[i]));
      }

      return movies;
    } else {
      throw Exception('Failed Load to API');
    }
  }
}
