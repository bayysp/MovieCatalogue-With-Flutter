import 'package:flutter/material.dart';
import 'package:movie_app/view/listview/movie_list_view.dart';

class MoviePage extends StatefulWidget {
  @override
  _MoviePageState createState() => _MoviePageState();
}

class _MoviePageState extends State<MoviePage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          title: Text("Movie App"),
          backgroundColor: Colors.transparent,
        ),
        backgroundColor: Colors.transparent,
        body: Container(
            margin: EdgeInsets.fromLTRB(16, 0, 16, 0), child: MovieListView()));
  }
}
