import 'package:flutter/material.dart';

class Movie {
  final String id;
  final String name;
  final String genre1;
  final String genre2;
  final double percentage1;
  final double percentage2;
  final String image;

  Movie({
    this.id,
    this.name,
    this.genre1,
    this.genre2,
    this.percentage1,
    this.percentage2,
    this.image,
  });
}

class Movies with ChangeNotifier {
  List<Movie> _movies = [
    Movie(
      id: DateTime.now().toString(),
      name: "Fast and The Furious 2",
      image: "assets/images/2f2f.jpg",
      genre1: "Drama",
      genre2: "Action",
      percentage1: 49.91,
      percentage2: 25.03,
    ),
    Movie(
      id: DateTime.now().toString(),
      name: "Marvel: Gardians Of Galaxy",
      genre1: "Action",
      genre2: "Drama",
      percentage1: 77.64,
      percentage2: 12.23,
      image: "assets/images/gog.jpg",
    ),
    Movie(
      id: DateTime.now().toString(),
      name: "The NUN",
      image: "assets/images/the_nun.jpg",
      genre1: "Horror",
      genre2: "Action",
      percentage1: 53.27,
      percentage2: 46.52,
    ),
    Movie(
      id: DateTime.now().toString(),
      name: "1920 London",
      image: "assets/images/1920.jpg",
      genre1: "Horror",
      genre2: "Romance",
      percentage1: 81.24,
      percentage2: 15.05,
    ),
    Movie(
      id: DateTime.now().toString(),
      name: "Arrival",
      image: "assets/images/arrival.jpg",
      genre1: "Drama",
      genre2: "Horror",
      percentage1: 92.03,
      percentage2: 7.39,
    ),
    Movie(
      id: DateTime.now().toString(),
      name: "Big Miracle",
      image: "assets/images/big_miracle.jpg",
      genre1: "Drama",
      genre2: "Romance",
      percentage1: 86.15,
      percentage2: 12.89,
    ),
    Movie(
      id: DateTime.now().toString(),
      name: "Friends With Benefits",
      image: "assets/images/fwb.jpg",
      genre1: "Romance",
      genre2: "Drama",
      percentage1: 78.95,
      percentage2: 17.12,
    ),
    Movie(
      id: DateTime.now().toString(),
      name: "Left Behind",
      image: "assets/images/left_behind.jpg",
      genre1: "Romance",
      genre2: "Action",
      percentage1: 45.93,
      percentage2: 29.48,
    ),
    Movie(
      id: DateTime.now().toString(),
      name: "New Beastly",
      image: "assets/images/new_beastly.jpg",
      genre1: "Drama",
      genre2: "Action",
      percentage1: 49.15,
      percentage2: 31.32,
    ),
    Movie(
      id: DateTime.now().toString(),
      name: "Robocop",
      image: "assets/images/robocop.jpg",
      genre1: "Action",
      genre2: "Drama",
      percentage1: 57.04,
      percentage2: 32.62,
    ),
    Movie(
      id: DateTime.now().toString(),
      name: "The Rosie Project",
      image: "assets/images/the_rosie_project.jpg",
      genre1: "Drama",
      genre2: "Action",
      percentage1: 33.46,
      percentage2: 33.06
    ),
  ];

  List<Movie> get getMovies {
    if (_movies.isNotEmpty) {
      return [..._movies];
    }
    return [];
  }

  List<Movie> get getActionMovies {
    return _movies.where((movie) {
      return movie.genre1 == "Action";
    }).toList();
  }

  List<Movie> get getDramaMovies {
    return _movies.where((movie) {
      return movie.genre1 == "Drama";
    }).toList();
  }

  List<Movie> get getHorrorMovies {
    return _movies.where((movie) {
      return movie.genre1 == "Horror";
    }).toList();
  }

  List<Movie> get getRomanceMovies {
    return _movies.where((movie) {
      return movie.genre1 == "Romance";
    }).toList();
  }
  Movie movieDetails(String id){
    return _movies.firstWhere((movie)=>movie.id==id);
  }
}
