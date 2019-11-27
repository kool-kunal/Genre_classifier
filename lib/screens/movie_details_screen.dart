import 'package:flutter/material.dart';
import 'package:genre_classifier/provider/movies_details.dart';
import 'package:provider/provider.dart';
import '../widgets/app_drawer.dart';

class MovieDetails extends StatelessWidget {
  Map<String, Color> genreColor = {
    "Action": Colors.grey,
    "Drama": Colors.blue,
    "Horror": Colors.black,
    "Romance": Colors.red,
  };

  Color percentageColor(double per) {
    if (per > 90) {
      return Colors.green;
    } else if (per > 70) {
      return Colors.yellow;
    } else if (per > 50) {
      return Colors.amber;
    } else if (per > 30) {
      return Colors.orange;
    } else {
      return Colors.red;
    }
  }

  static const routeName = "/MovieDetails";
  @override
  Widget build(BuildContext context) {
    final id = ModalRoute.of(context).settings.arguments;
    final _movie = Provider.of<Movies>(context).movieDetails(id);
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.yellow[50],
            Colors.yellow[100],
            Colors.yellow[200],
            Colors.yellow[300],
            Colors.yellow[400],
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          stops: [0.2, 0.4, 0.6, 0.8, 0.99],
        ),
      ),
      child: Stack(
        children: <Widget>[
          Image.asset(
            _movie.image,
            height: MediaQuery.of(context).size.height,
            fit: BoxFit.cover,
            colorBlendMode: BlendMode.lighten,
            color: Colors.white60,
          ),
          Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              title: Text(_movie.name),
            ),
            body: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    SizedBox(
                      height: 100,
                    ),
                    Container(
                      margin: const EdgeInsets.all(10),
                      child: Text(
                        "Genre 1: ",
                        style: TextStyle(fontSize: 25),
                      ),
                    ),
                    Chip(
                      backgroundColor: genreColor[_movie.genre1],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      label: Text(
                        _movie.genre1,
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.4),
                        borderRadius: BorderRadius.circular(25),
                        border: Border.all(color: Colors.black),
                      ),
                      child: Text(
                        "${_movie.percentage1} %",
                        style: TextStyle(
                          fontSize: 17,
                          color: percentageColor(_movie.percentage1),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    SizedBox(
                      height: 100,
                    ),
                    Container(
                      margin: const EdgeInsets.all(10),
                      child: Text(
                        "Genre 2: ",
                        style: TextStyle(fontSize: 25),
                      ),
                    ),
                    Chip(
                      backgroundColor: genreColor[_movie.genre2],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      label: Text(
                        _movie.genre2,
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.4),
                        borderRadius: BorderRadius.circular(25),
                        border: Border.all(color: Colors.black),
                      ),
                      child: Text(
                        "${_movie.percentage2} %",
                        style: TextStyle(
                          fontSize: 17,
                          color: percentageColor(_movie.percentage2),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
