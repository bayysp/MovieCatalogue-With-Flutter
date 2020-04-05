import 'package:flutter/material.dart';

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
        margin: EdgeInsets.fromLTRB(16, 0, 16, 0),
        child: ListView(children: buildCardView()),
      ),
    );
  }

  List<Widget> buildCardView() {
    return List<Widget>.generate(15, (int index) {
      return Container(
        height: 160,
        margin: EdgeInsets.all(8),
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  color: Color(0xFF66A5AD), blurRadius: 5.0, spreadRadius: 0.3)
            ],
            color: Colors.white,
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(6)),
      );
    });
  }
}
