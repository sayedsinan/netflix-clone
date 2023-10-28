import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
import 'package:netflixxclone/constant/constant.dart';

class Search extends StatefulWidget {
  const Search({Key? key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
    String? stringresponse;
    Map? mapresponse;
    List listapiCall = [];

    Future apicall() async {
      http.Response response;
      String url =
          'https://api.themoviedb.org/3/trending/movie/day?api_key=dae8fecb5a88060e62df175f22c61eba';
      response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        setState(() {
          stringresponse = response.body;
          mapresponse = json.decode(response.body);
          listapiCall = mapresponse!['results'];
        });
      } else {
        return const CircularProgressIndicator();
      }
    }

    @override
    void initState() {
      apicall();
      super.initState();
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(
        children: [
          Column(
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
                padding: EdgeInsets.only(right: 250),
                child: Text(
                  'Top Searches',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              for (var searchpart in listapiCall)
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Container(
                        height: 100,
                        width: 500,
                        color: Colors.grey[800],
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                SizedBox(
                                  height: 100,
                                  width: 150,
                                  child: Image.network(
                                    '${Constan.imagPath}${searchpart['poster_path']}',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                SizedBox(
                                  height: 50,
                                  width: 150,
                                  child: Text(
                                    searchpart['title'],
                                    overflow: TextOverflow.fade,
                                    maxLines: 2,
                                    style: GoogleFonts.bebasNeue(
                                        fontSize: 16, color: Colors.white),
                                  ),
                                ),
                           const       Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                   children: [
                                     Icon(
                              
                                      Icons.play_circle_outline_outlined,
                                      color: Colors.white,
                                      size: 40,
                                ),
                                   ],
                                 )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10, // Adjust the height as needed
                    ),
                  ],
                ),
            ],
          ),
        ],
      ),
    );
  }
}
