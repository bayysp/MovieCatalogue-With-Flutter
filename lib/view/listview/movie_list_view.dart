import 'package:flutter/material.dart';
import 'package:movie_app/model/movie_model.dart';
import 'package:movie_app/utils/Constants.dart';

class MovieListView extends StatefulWidget {
  @override
  _MovieListViewState createState() => _MovieListViewState();
}

class _MovieListViewState extends State<MovieListView> {
  Movie movie = Movie();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Movie>>(
      future: movie.getDiscoversMovie(),
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        if (snapshot.hasData) {
          List<Movie> movieData = snapshot.data;
          return _movieDiscoverListView(movieData);
        } else if (snapshot.hasError) {
          return Text("${snapshot.error}");
        }
        return CircularProgressIndicator();
      },
    );
  }

  ListView _movieDiscoverListView(movieData) {
    return ListView.builder(
      itemCount: movieData.length,
      itemBuilder: (context, index) {
        return _tile(movieData[index]);
      },
    );
  }

  ListTile _tile(Movie data) => ListTile(
    onTap: (){},
        leading: CircleAvatar(
          backgroundImage:
              NetworkImage(Constants.baseIMAGEURL + data.posterPath),
        ),
        title: Text(
          data.title,
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
        ),
        subtitle: Text(
          data.overview,
          maxLines: 2,
        ),
        dense: false,
      );
}
