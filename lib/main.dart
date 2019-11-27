import 'package:flutter/material.dart';
import 'package:genre_classifier/provider/movies_details.dart';
import 'package:genre_classifier/screens/about_screen.dart';
import 'package:genre_classifier/screens/home_Page_screen.dart';
import 'package:genre_classifier/screens/movie_details_screen.dart';
import 'package:provider/provider.dart';

void main() => runApp(GenreClassifierApp());

class GenreClassifierApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: Movies(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          accentColor: Colors.amberAccent,
          primarySwatch: Colors.amber,
          backgroundColor: Colors.blue,
          brightness: Brightness.light,
        ),
        title: 'GenreClassifier',
        home: HomePage(),
        routes: {
          HomePage.routeName: (ctx) => HomePage(),
          MovieDetails.routeName: (ctx) => MovieDetails(),
          AboutUsScreen.routeName: (ctx) => AboutUsScreen(),
        },
      ),
    );
  }
}
