import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
import 'package:netflixxclone/constant/constant.dart';

class Coming extends StatefulWidget {
  const Coming({super.key});

  @override
  State<Coming> createState() => _ComingState();
}

class _ComingState extends State<Coming> {
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
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 40, left: 30),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        height: 35,
                        width: 35,
                        color: Colors.red,
                        child: const Icon(
                          Icons.notifications,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 40, left: 20),
                    child: Text(
                      'Notifications',
                      style: GoogleFonts.bebasNeue(
                          color: Colors.white, fontSize: 20),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              Column(
                children: [
                  Container(
                    height: 100,
                    width: 500,
                    color: Colors.grey[800],
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SizedBox(
                            height: 200,
                            width: 200,
                            child: Image.network(
                                'https://image.tmdb.org/t/p/w500//pA3vdhadJPxF5GA1uo8OPTiNQDT.jpg'),
                          ),
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 60),
                              child: Text(
                                'New Arrival',
                                style: GoogleFonts.bebasNeue(
                                    color: Colors.white, fontSize: 20),
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 20),
                              child: Text(
                                "Sound of Freedom",
                                style: GoogleFonts.bebasNeue(
                                    color: Colors.white, fontSize: 20),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 100,
                    width: 500,
                    color: Colors.grey[800],
                    child: SizedBox(
                      height: 50,
                      width: 50,
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SizedBox(
                              height: 200,
                              width: 200,
                              child: Image.network(
                                  'https://image.tmdb.org/t/p/w500//whB2PJfxrDWwwksprliJTjYbcZJ.jpg'),
                            ),
                          ),
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 60),
                                child: Text(
                                  'New Arrival',
                                  style: GoogleFonts.bebasNeue(
                                      color: Colors.white, fontSize: 20),
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Five Nights at Freddy's",
                                style: GoogleFonts.bebasNeue(
                                    color: Colors.white, fontSize: 20),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              for (var slide in listapiCall)
                Column(
                  children: [
                    SizedBox(
                      height: 200,
                      width: 500,
                      child: Image.network(
                        '${Constan.imagPath}${slide['backdrop_path']}',
                        filterQuality: FilterQuality.high,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(
                          Icons.notifications,
                          color: Colors.white,
                          size: 40,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Icon(
                          Icons.share,
                          color: Colors.white,
                          size: 40,
                        ),
                      ],
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'Remind me',
                          style: TextStyle(color: Colors.white, fontSize: 10),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          'Share',
                          style: TextStyle(color: Colors.white, fontSize: 10),
                        )
                      ],
                    ),
                  const   SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 60),
                      child: Text(
                        slide['title'],
                        style: GoogleFonts.bebasNeue(
                            color: Colors.white, fontSize: 30),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 60, bottom: 40),
                      child: Text(
                        slide['overview'] ?? "Nothing",
                        style: GoogleFonts.bebasNeue(
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    )
                  ],
                ),
              const SizedBox(
                height: 20,
              ),
            ],
          )
        ],
      ),
    );
  }
}
