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
                  SizedBox(
                    height: 500,
                    width: double.infinity,
                    child: Column(
                      children: [
                        Stack(
                          children: [
                            Image.asset(
                              'images/banner.png',
                              height: 400,
                              fit: BoxFit.cover,
                            ),
                            AppBar(
                              backgroundColor: Colors.transparent,
                              leading: SizedBox(
                                height: 20,
                                width: 20,
                                child: Image.asset(
                                  'images/Netflix-Symbol.png',
                                ),
                              ),
                              title:const Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text('Tv shows',style: TextStyle(fontSize: 15),),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text('Movies',style: TextStyle(fontSize: 15),),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text('My List',style: TextStyle(fontSize: 15),)
                                ],
                              ),
                            )
                          ],
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
                          padding: const EdgeInsets.only(left: 70),
                          child: Row(
                            children: [
                              const Column(
                                children: [
                                  Icon(
                                    Icons.add,
                                    color: Colors.white,
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    'My List',
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  )
                                ],
                              ),
                              const SizedBox(
                                width: 40,
                              ),
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
                                          color: Colors.black,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 40,
                              ),
                              const Column(
                                children: [
                                  Icon(
                                    Icons.info_outline,
                                    color: Colors.white,
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    'info',
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Text(
                'Previews',
                style: GoogleFonts.bebasNeue(
                  color: Colors.white,
                  fontSize: 30,
                ),
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
                        child: Text(
                          snapshot.error.toString(),
                        ),
                      );
                    } else if (snapshot.hasData) {
                      return PreviewSlider(
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
                'Trending Movies',
                style: GoogleFonts.bebasNeue(color: Colors.white, fontSize: 30),
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
                style: GoogleFonts.bebasNeue(color: Colors.white, fontSize: 30),
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
                style: GoogleFonts.bebasNeue(color: Colors.white, fontSize: 30),
              ),
              SizedBox(
                child: FutureBuilder(
                  future: trendingmovies,
                  builder: (context, snapshot) {
                    if (snapshot.hasError) {
                      return Center(
                        child: Text(
                          snapshot.error.toString(),
                        ),
                      );
                    } else if (snapshot.hasData) {
                      return Upcoming(
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
            ],
          ),
        ),
      ),
    );
  }
}
