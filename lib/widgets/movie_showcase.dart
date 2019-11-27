import 'package:flutter/material.dart';
import 'package:genre_classifier/screens/movie_details_screen.dart';

class MovieShowcase extends StatelessWidget {
  final String name;
  final String id;
  final String image;

  MovieShowcase({
    this.id,
    this.name,
    this.image,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.of(context).pushNamed(MovieDetails.routeName, arguments: id);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 7.0),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(15),
            ),
          ),
          elevation: 4,
          child: Container(
            height: 200,
            width: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
            ),
            child: Stack(
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.all(
                    Radius.circular(15),
                  ),
                  child: Image.asset(
                    image,
                    height: 200,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  right: 0,
                  left: 0,
                  bottom: 0,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(15),
                        bottomRight: Radius.circular(15),
                      ),
                      color: Colors.black54,
                    ),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 5,
                      vertical: 10,
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      name,
                      softWrap: true,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                      overflow: TextOverflow.fade,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
