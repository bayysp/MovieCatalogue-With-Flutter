import 'package:flutter/material.dart';
import 'package:movie_app/model/movie_model.dart';
import 'package:movie_app/utils/Constants.dart';
import 'package:movie_app/view/detail_activity.dart';

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
        return Center(child: CircularProgressIndicator());
      },
    );
  }

  ListView _movieDiscoverListView(movieData) {
    return ListView.builder(
      itemCount: movieData.length,
      itemBuilder: (context, index) {
        return Card(elevation: 3, child: _tile(movieData[index]));
      },
    );
  }

  ListTile _tile(Movie movie) => ListTile(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            
            return DetailActivity(movie : movie);
          }));
        },
        leading: Hero(
          transitionOnUserGestures: false,
          tag: movie.id.toString(),
          child: CircleAvatar(
            backgroundImage:
                NetworkImage(Constants.baseIMAGEURL + movie.posterPath),
          ),
        ),
        title: Text(
          movie.title,
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
          maxLines: 2,
        ),
        subtitle: Text(
          movie.overview,
          maxLines: 2,
        ),
        dense: false,
      );
}
