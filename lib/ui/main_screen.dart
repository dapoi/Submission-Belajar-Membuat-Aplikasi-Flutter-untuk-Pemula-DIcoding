import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'detail_screen.dart';
import '../model/movie.dart';

var informationTextStyle =
    TextStyle(fontSize: 20, fontFamily: 'Oxygen', fontWeight: FontWeight.bold);

class MainScreen extends StatelessWidget {
  final String displayName;

  MainScreen({required this.displayName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("i-Movie",
            style: TextStyle(fontStyle: FontStyle.italic, letterSpacing: 10)),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(padding: EdgeInsets.only(top: 15)),
                  Text(
                    "Hi $displayName, WELCOME !!",
                    style: informationTextStyle,
                  ),
                ],
              ),
            ),
            Container(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(padding: EdgeInsets.only(top: 15)),
                ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) {
                    final Movies movies = movieList[index];
                    return InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return DetailScreen(movies: movies);
                        }));
                      },
                      child: Card(
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(15),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Expanded(
                                  flex: 1,
                                  child: Image.asset(
                                    movies.cover,
                                    scale: 5,
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Padding(
                                padding: const EdgeInsets.all(16),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      movies.title,
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Padding(padding: EdgeInsets.all(10)),
                                    Text(movies.date,
                                        style: TextStyle(fontSize: 16)),
                                    Padding(padding: EdgeInsets.all(10)),
                                    Text(movies.genre,
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontStyle: FontStyle.italic))
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                  itemCount: movieList.length,
                ),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
