import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflixxclone/models/movie.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: ListView(
          children: [
            TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.grey[900],
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.grey[700],
                ),
                suffixIcon: Icon(
                  Icons.mic,
                  color: Colors.grey[700],
                ),
                hintText: '    Search for a show , movie,genre,e.t.c',
                hintStyle: TextStyle(
                  color: Colors.grey[700],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                'Top Searches',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Column(
              children: [
                Row(
                  children: [
                    Container(
                      height: 120,
                      width: 150,
                      child: Image.network(
                        'https://image.tmdb.org/t/p/w500//jP3FatCTHc460ZGW57q9ypTdBqu.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      height: 120,
                      width: 240,
                      color: Colors.grey[800],
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Text(
                              '57 Seconds',
                              style: GoogleFonts.bebasNeue(
                                  color: Colors.white, fontSize: 20),
                            ),
                          ),
                          SizedBox(
                            width: 105,
                          ),
                          Icon(
                            Icons.play_circle,
                            color: Colors.white,
                            size: 40,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Container(
                        height: 120,
                        width: 150,
                        child: Image.network(
                          'https://image.tmdb.org/t/p/w500//rYcZGmu0DIHIyQFnni5HB0cliMQ.jpg',
                          fit: BoxFit.cover,
                        )),
                    Container(
                      height: 120,
                      width: 240,
                      color: Colors.grey[800],
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Text(
                              '발레리나',
                              style: GoogleFonts.bebasNeue(
                                  fontSize: 20, color: Colors.white),
                            ),
                          ),
                          SizedBox(
                            width: 105,
                          ),
                          Icon(
                            Icons.play_circle,
                            color: Colors.white,
                            size: 40,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Container(
                        height: 120,
                        width: 150,
                        child: Image.network(
                          'https://image.tmdb.org/t/p/w500//r7DuyYJ0N3cD8bRKsR5Ygq2P7oa.jpg',
                          fit: BoxFit.cover,
                        )),
                    Container(
                      height: 120,
                      width: 240,
                      color: Colors.grey[800],
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Text(
                              'Gran Turismo',
                              style: GoogleFonts.bebasNeue(
                                  fontSize: 20, color: Colors.white),
                            ),
                          ),
                          SizedBox(
                            width: 88,
                          ),
                          Icon(
                            Icons.play_circle,
                            color: Colors.white,
                            size: 40,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Container(
                        height: 120,
                        width: 150,
                        child: Image.network(
                          'https://image.tmdb.org/t/p/w500//8pjWz2lt29KyVGoq1mXYu6Br7dE.jpg',
                          fit: BoxFit.cover,
                        )),
                    Container(
                      height: 120,
                      width: 240,
                      color: Colors.grey[800],
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Text(
                              'Meg 2: The Trench',
                              style: GoogleFonts.bebasNeue(
                                  fontSize: 20, color: Colors.white),
                            ),
                          ),
                          SizedBox(
                            width: 58,
                          ),
                          Icon(
                            Icons.play_circle,
                            color: Colors.white,
                            size: 40,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
