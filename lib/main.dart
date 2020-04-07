import 'package:flutter/material.dart';
import 'package:movie_app/utils/page_transition.dart';
import 'package:movie_app/view/detail_activity.dart';
import 'package:movie_app/view/home_activity.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: HomeActivity(),
        onGenerateRoute: (settings) {
          switch (settings.name) {
            case '/second':
              return PageTransition(
                child: DetailActivity(),
                type: PageTransitionType.scale,
                settings: settings,
              );
              break;
            default:
              return null;
          }
        });
  }
}
