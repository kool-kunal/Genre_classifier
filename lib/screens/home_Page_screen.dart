import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:genre_classifier/widgets/app_drawer.dart';
import 'package:genre_classifier/widgets/movie_showcase.dart';
import '../provider/movies_details.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  static const routeName = "/HomePage";
  @override
  Widget build(BuildContext context) {
    final _actionmovies =
        Provider.of<Movies>(context, listen: false).getActionMovies;
    final _dramamovies =
        Provider.of<Movies>(context, listen: false).getDramaMovies;
    final _horrormovies =
        Provider.of<Movies>(context, listen: false).getHorrorMovies;
    final _romancemovies =
        Provider.of<Movies>(context, listen: false).getRomanceMovies;
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

            "assets/images/download.jpg",
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
              title: Text('Home'),
            ),
            drawer: AppDrawer(),
            body: Container(
              padding: const EdgeInsets.all(10),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    if (_actionmovies.isNotEmpty)
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.grey),
                        margin: const EdgeInsets.symmetric(horizontal: 15),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 2),
                        child: Text(
                          "Action",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    if (_actionmovies.isNotEmpty)
                      Container(
                        height: 220,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 10),
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: _actionmovies.length,
                          itemBuilder: (context, index) {
                            print('Action movies');
                            return MovieShowcase(
                              id: _actionmovies[index].id,
                              name: _actionmovies[index].name,
                              image: _actionmovies[index].image,
                            );
                          },
                        ),
                      ),
                    if (_dramamovies.isNotEmpty)
                      SizedBox(
                        height: 10,
                      ),
                    if (_dramamovies.isNotEmpty)
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.blueAccent),
                        margin: const EdgeInsets.symmetric(horizontal: 15),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 2),
                        child: Text(
                          "Drama",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    if (_dramamovies.isNotEmpty)
                      Container(
                        height: 220,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 10),
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: _dramamovies.length,
                          itemBuilder: (context, index) {
                            print('Drama movies');
                            return MovieShowcase(
                              id: _dramamovies[index].id,
                              name: _dramamovies[index].name,
                              image: _dramamovies[index].image,
                            );
                          },
                        ),
                      ),
                    if (_horrormovies.isNotEmpty)
                      SizedBox(
                        height: 10,
                      ),
                    if (_horrormovies.isNotEmpty)
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.black),
                        margin: const EdgeInsets.symmetric(horizontal: 15),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 2),
                        child: Text(
                          "Horror",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    if (_horrormovies.isNotEmpty)
                      Container(
                        height: 220,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 10),
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: _horrormovies.length,
                          itemBuilder: (context, index) {
                            print('Horror movies');
                            return MovieShowcase(
                              id: _horrormovies[index].id,
                              name: _horrormovies[index].name,
                              image: _horrormovies[index].image,
                            );
                          },
                        ),
                      ),
                    if (_romancemovies.isNotEmpty)
                      SizedBox(
                        height: 10,
                      ),
                    if (_romancemovies.isNotEmpty)
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.redAccent),
                        margin: const EdgeInsets.symmetric(horizontal: 15),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 2),
                        child: Text(
                          "Romance",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    if (_romancemovies.isNotEmpty)
                      Container(
                        height: 220,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 10),
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: _romancemovies.length,
                          itemBuilder: (context, index) {
                            print('Romance movies');
                            return MovieShowcase(
                              id: _romancemovies[index].id,
                              name: _romancemovies[index].name,
                              image: _romancemovies[index].image,
                            );
                          },
                        ),
                      ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
