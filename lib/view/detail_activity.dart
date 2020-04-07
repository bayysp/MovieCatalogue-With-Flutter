import 'package:flutter/material.dart';
import 'package:movie_app/model/movie_model.dart';
import 'package:movie_app/utils/Constants.dart';

class DetailActivity extends StatelessWidget {
  final Movie movie;

  const DetailActivity({Key key, this.movie}) : super(key: key);

  double getSmallDiameter(BuildContext context) =>
      MediaQuery.of(context).size.width * 2 / 3;
  double getBigDiameter(BuildContext context) =>
      MediaQuery.of(context).size.width * 5 / 6;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: <Widget>[
            Positioned(
              right: -getSmallDiameter(context) / 3,
              top: -getSmallDiameter(context) / 3,
              child: Container(
                width: getSmallDiameter(context),
                height: getSmallDiameter(context),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: LinearGradient(
                        colors: [Color(0xFF66A5AD), Color(0xFFC4DFE6)],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter)),
              ),
            ),
            Positioned(
                left: -getSmallDiameter(context) / 4,
                top: -getSmallDiameter(context) / 4,
                child: Container(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 50),
                  width: getBigDiameter(context),
                  height: getBigDiameter(context),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: LinearGradient(
                          colors: [Color(0xFF07575B), Color(0xFFC4DFE6)],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter)),
                )),
            Positioned(
              right: -getBigDiameter(context) / 2,
              bottom: -getBigDiameter(context) / 2,
              child: Container(
                width: getBigDiameter(context),
                height: getBigDiameter(context),
                decoration: BoxDecoration(
                    shape: BoxShape.circle, color: Color(0xFFC4DFE6)),
              ),
            ),

            // for data
            CustomScrollView(
              slivers: <Widget>[
                SliverAppBar(
                  shape: ContinuousRectangleBorder(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(120),
                          bottomRight: Radius.circular(120))),
                  backgroundColor: Color(0xFF66A5AD),
                  floating: true,
                  pinned: false,
                  snap: false,
                  centerTitle: true,
                  expandedHeight: 240.0,
                  flexibleSpace: Stack(
                    children: <Widget>[
                      Positioned.fill(
                          child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(32),
                                bottomLeft: Radius.circular(32)),
                            image: DecorationImage(
                                //add image URL in here from API
                                image: NetworkImage(
                                    Constants.baseBACKDROPURL+movie.backdropPath),
                                fit: BoxFit.cover)),
                      )),
                      Positioned(
                        height: 180,
                        right: MediaQuery.of(context).size.width * 0.55,
                        bottom: 10,
                        child: Hero(
                          tag: movie.id.toString(),
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.35,
                            decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey,
                                      blurRadius: 5,
                                      spreadRadius: 0.5),
                                ],
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                    //add image URL in here from API
                                    image: NetworkImage(Constants.baseIMAGEURL +
                                        movie.posterPath.toString()),
                                    fit: BoxFit.cover)),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SliverList(
                  delegate: SliverChildListDelegate([
                    Center(
                      child: Text(
                        movie.title,
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                    Center(
                      child: Text(
                        movie.title,
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                    Center(
                      child: Text(
                        movie.title,
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                    Center(
                      child: Text(
                        movie.title,
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                    Center(
                      child: Text(
                        movie.title,
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                    Center(
                      child: Text(
                        movie.title,
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                    Center(
                      child: Text(
                        movie.title,
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                    Center(
                      child: Text(
                        movie.title,
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                    Center(
                      child: Text(
                        movie.title,
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                    Center(
                      child: Text(
                        movie.title,
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                    Center(
                      child: Text(
                        movie.title,
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                    Center(
                      child: Text(
                        movie.title,
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                    Center(
                      child: Text(
                        movie.title,
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                    Center(
                      child: Text(
                        movie.title,
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                    Center(
                      child: Text(
                        movie.title,
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                    Center(
                      child: Text(
                        movie.title,
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                    Center(
                      child: Text(
                        movie.title,
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                    Center(
                      child: Text(
                        movie.title,
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                    Center(
                      child: Text(
                        movie.title,
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                    Center(
                      child: Text(
                        movie.title,
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                    Center(
                      child: Text(
                        movie.title,
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                    Center(
                      child: Text(
                        movie.title,
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                    Center(
                      child: Text(
                        movie.title,
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                    Center(
                      child: Text(
                        movie.title,
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                    Center(
                      child: Text(
                        movie.title,
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                    Center(
                      child: Text(
                        movie.title,
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                    Center(
                      child: Text(
                        movie.title,
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                    Center(
                      child: Text(
                        movie.title,
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                  ]),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
