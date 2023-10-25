import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflixxclone/api/api.dart';
import 'package:netflixxclone/models/movie.dart';
import 'package:netflixxclone/widgets/slider.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late Future<List<Movie>> previewMovies;
  late Future<List<Movie>> trendingmovies;
  late Future<List<Movie>> topratedMovies;
  late Future<List<Movie>> upcomingMovies;
  @override
  void initState() {
    super.initState();
    previewMovies = Api().getpreview();
    trendingmovies = Api().getTrendingMovies();
    topratedMovies = Api().getToprated();
    upcomingMovies = Api().getupcoming();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Stack(
                      children: [
                        SizedBox(
                          height: 500,
                          width: double.infinity,
                          child: Column(
                            children: [
                              Image.asset(
                                'images/banner.png',
                                height: 400,
                                fit: BoxFit.cover,
                              ),
                              Positioned(
                                bottom: 10,
                                left: 10,
                                child: Text(
                                  '#2 in Nigeria Today',
                                  style: GoogleFonts.bebasNeue(
                                    color: Colors.white,
                                    fontSize: 30,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    right: 120, left: 150),
                                child: Row(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(15),
                                      child: ElevatedButton(
                                        onPressed: () {},
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: Colors.grey[400],
                                        ),
                                        child: const Row(
                                          children: [
                                            Icon(
                                              Icons.play_arrow,
                                              color: Colors.black,
                                            ),
                                            SizedBox(width: 5),
                                            Text(
                                              'Play',
                                              style: TextStyle(
                                                  color: Colors.black),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Text(
                  'Previews',
                  style:
                      GoogleFonts.bebasNeue(color: Colors.white, fontSize: 30),
                ),
                const SizedBox(
                  height: 15,
                ),
                SizedBox(
                  child: FutureBuilder(
                    future: topratedMovies,
                    builder: (context, snapshot) {
                      if (snapshot.hasError) {
                        return Center(
                          child: Text(snapshot.error.toString()),
                        );
                      } else if (snapshot.hasData) {
                        return previewSlider(
                          snapshot: snapshot,
                        );
                      } else {
                        return const Center(child: CircularProgressIndicator());
                      }
                    },
                  ),
                ),
                const SizedBox(
                  height: 32,
                ),
                Text(
                  'Trending Movies',
                  style:
                      GoogleFonts.bebasNeue(color: Colors.white, fontSize: 30),
                ),
                const SizedBox(
                  height: 15,
                ),
                SizedBox(
                  child: FutureBuilder(
                    future: trendingmovies,
                    builder: (context, snapshot) {
                      if (snapshot.hasError) {
                        return Center(
                          child: Text(snapshot.error.toString()),
                        );
                      } else if (snapshot.hasData) {
                        return Trendingslider(
                          snapshot: snapshot,
                        );
                      } else {
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      }
                    },
                  ),
                ),
                const SizedBox(
                  height: 32,
                ),
                Text(
                  'Top rated movies',
                  style:
                      GoogleFonts.bebasNeue(color: Colors.white, fontSize: 30),
                ),
                SizedBox(
                  child: FutureBuilder(
                    future: topratedMovies,
                    builder: (context, snapshot) {
                      if (snapshot.hasError) {
                        return Center(
                          child: Text(snapshot.error.toString()),
                        );
                      } else if (snapshot.hasData) {
                        return MoviesSlider(
                          snapshot: snapshot,
                        );
                      } else {
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      }
                    },
                  ),
                ),
                const SizedBox(
                  height: 32,
                ),
                Text(
                  'Upcoming movies',
                  style:
                      GoogleFonts.bebasNeue(color: Colors.white, fontSize: 30),
                ),
                SizedBox(
                  child: FutureBuilder(
                    future: trendingmovies,
                    builder: (context, snapshot) {
                      if (snapshot.hasError) {
                        return Center(
                          child: Text(snapshot.error.toString()),
                        );
                      } else if (snapshot.hasData) {
                        return upComing(
                          snapshot: snapshot,
                        ); 
                      } else {
                        return const Center(
                            child:
                                CircularProgressIndicator()); 
                      }
                    },
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
