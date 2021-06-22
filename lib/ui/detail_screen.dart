import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:imovie/favorite/favorite_button.dart';

import '../model/movie.dart';

class DetailScreen extends StatelessWidget {
  final Movies movies;

  DetailScreen({required this.movies});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail's ${movies.title}"),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.all(15),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Row(
                  children: [
                    Image.asset(movies.cover, scale: 3),
                    Padding(padding: const EdgeInsets.only(left: 20)),
                    Expanded(
                        flex: 1,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(movies.title,
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold)),
                            Padding(padding: const EdgeInsets.only(top: 25)),
                            Text(movies.date, style: TextStyle(fontSize: 16)),
                            Padding(padding: const EdgeInsets.only(top: 25)),
                            Text(movies.genre,
                                style: TextStyle(
                                    fontSize: 18, fontStyle: FontStyle.italic)),
                            Padding(padding: const EdgeInsets.only(top: 25)),
                            Row(
                              children: [
                                Icon(Icons.star, color: Colors.yellow),
                                Text("Rating : ${movies.rate}",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold)),
                                FavoriteButton()
                              ],
                            )
                          ],
                        )),
                  ],
                ),
              ),
            ),
            Padding(
                padding: const EdgeInsets.all(16),
                child: Text(movies.desc, style: TextStyle(fontSize: 18))),
          ],
        ),
      ),
    );
  }
}
