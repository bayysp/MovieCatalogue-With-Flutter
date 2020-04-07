import 'package:flutter/material.dart';
import 'package:movie_app/model/Movie.dart';
import 'package:movie_app/model/movie_model.dart';
import 'package:movie_app/utils/Constants.dart';
import 'package:movie_app/utils/page_transition.dart';
import 'package:movie_app/view/activity/detail_activity.dart';

class MovieListView extends StatefulWidget {
  @override
  _MovieListViewState createState() => _MovieListViewState();
}

class _MovieListViewState extends State<MovieListView> {
  MovieModel movieModel = MovieModel();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<MovieModel>>(
      future: movieModel.getDiscoversMovie(),
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        if (snapshot.hasData) {
          List<MovieModel> movieData = snapshot.data;
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

  ListTile _tile(MovieModel movieModel) => ListTile(
        onTap: () {
          Navigator.push(context, PageTransition(
            alignment: Alignment.bottomCenter,
            curve: Curves.bounceOut,
            type: PageTransitionType.upToDown,
            child: DetailActivity(movieModel: movieModel,)
          ));
        },
        leading: Hero(
          transitionOnUserGestures: false,
          tag: movieModel.id.toString(),
          child: CircleAvatar(
            backgroundImage:
                NetworkImage(Constants.baseIMAGEURL + movieModel.posterPath),
          ),
        ),
        title: Text(
          movieModel.title,
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
          maxLines: 2,
        ),
        subtitle: Text(
          movieModel.overview,
          maxLines: 2,
        ),
        dense: false,
      );
}
