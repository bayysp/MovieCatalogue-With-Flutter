import 'package:flutter/material.dart';
import 'package:movie_app/model/movie_model.dart';
import 'package:movie_app/utils/Constants.dart';

class DetailActivity extends StatelessWidget {
  final Movie movie;

  const DetailActivity({Key key, this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            backgroundColor: Color(0xFF66A5AD),
            floating: true,
            pinned: false,
            snap: false,
            centerTitle: true,
            expandedHeight: 240.0,
            flexibleSpace: Stack(
              
              children: <Widget>[
                Positioned.fill(
                    child: Image.network(
                  Constants.baseBACKDROPURL + movie.backdropPath.toString(),
                  fit: BoxFit.cover,
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
              ListTile(
                leading: Icon(Icons.volume_off),
                title: Text("Volume Off"),
              ),
              ListTile(
                  leading: Icon(Icons.volume_down), title: Text("Volume Down")),
              ListTile(
                  leading: Icon(Icons.volume_mute), title: Text("Volume Mute")),
              ListTile(
                  leading: Icon(Icons.volume_mute), title: Text("Volume Mute")),
              ListTile(
                  leading: Icon(Icons.volume_mute), title: Text("Volume Mute")),
              ListTile(
                  leading: Icon(Icons.volume_mute), title: Text("Volume Mute")),
              ListTile(
                  leading: Icon(Icons.volume_mute), title: Text("Volume Mute")),
              ListTile(
                  leading: Icon(Icons.volume_mute), title: Text("Volume Mute")),
              ListTile(
                  leading: Icon(Icons.volume_mute), title: Text("Volume Mute")),
              ListTile(
                  leading: Icon(Icons.volume_mute), title: Text("Volume Mute")),
              ListTile(
                leading: Icon(Icons.volume_off),
                title: Text("Volume Off"),
              ),
              ListTile(
                  leading: Icon(Icons.volume_down), title: Text("Volume Down")),
              ListTile(
                  leading: Icon(Icons.volume_mute), title: Text("Volume Mute")),
              ListTile(
                  leading: Icon(Icons.volume_mute), title: Text("Volume Mute")),
              ListTile(
                  leading: Icon(Icons.volume_mute), title: Text("Volume Mute")),
              ListTile(
                  leading: Icon(Icons.volume_mute), title: Text("Volume Mute")),
              ListTile(
                  leading: Icon(Icons.volume_mute), title: Text("Volume Mute")),
              ListTile(
                  leading: Icon(Icons.volume_mute), title: Text("Volume Mute")),
              ListTile(
                  leading: Icon(Icons.volume_mute), title: Text("Volume Mute")),
              ListTile(
                  leading: Icon(Icons.volume_mute), title: Text("Volume Mute")),
            ]),
          )
        ],
      ),

      // Center(
      //   child: Hero(

      //     tag: "bloodshot",
      //     child: ClipRRect(
      //       borderRadius: BorderRadius.circular(100),
      //       child: Container(
      //         width: 200,
      //         height: 200,
      //         child: Image(
      //           fit: BoxFit.cover,
      //           image: NetworkImage(
      //               "https://asset.winnetnews.com/uploads/images/nisa-1570764028.jpg"),
      //         ),
      //       ),
      //     ),
      //   ),
      // ),
    );
  }
}
