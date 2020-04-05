import 'package:flutter/material.dart';
import 'package:movie_app/view/movie_page.dart';
import 'package:movie_app/view/tvshow_page.dart';

class HomeActivity extends StatefulWidget {
  @override
  _HomeActivityState createState() => _HomeActivityState();
}

class _HomeActivityState extends State<HomeActivity> {
  double getSmallDiameter(BuildContext context) =>
      MediaQuery.of(context).size.width * 2 / 3;
  double getBigDiameter(BuildContext context) =>
      MediaQuery.of(context).size.width * 5 / 6;

  int _currentIndex = 0;

  final List<Widget> _children = [
    MoviePage(),
    TvshowPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          //small circle in base layer
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
              )
            ),
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

            //bottom nav and content
            _children[_currentIndex],
            
        ],
      ),

      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Color(0xFF07575B),
        unselectedItemColor: Color(0xFFEDEDED),
        currentIndex: _currentIndex, 
           items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.movie),
            title: Text("Movie"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.tv),
            title: Text("Tv Show"),
          )
        ],
        onTap: (index){
          setState(() {
           _currentIndex = index;
          });
        },
      ),
    );
  }
}
