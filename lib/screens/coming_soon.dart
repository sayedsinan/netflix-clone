import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Coming extends StatefulWidget {
  const Coming({super.key});

  @override
  State<Coming> createState() => _ComingState();
}

class _ComingState extends State<Coming> {
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
              SizedBox(
                height: 200,
                width: 500,
                child: Image.network(
                  'https://image.tmdb.org/t/p/w500//uvsL5Q5Juf8ivqBnlr4nFVUwVoa.jpg',
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
                    width: 10,
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
                    width: 10,
                  ),
                  Text(
                    'Share',
                    style: TextStyle(color: Colors.white, fontSize: 10),
                  )
                ],
              ),
            const  SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 60),
                child: Text(
                  'Killers of the Flower Moon',
                  style:
                      GoogleFonts.bebasNeue(color: Colors.white, fontSize: 30),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
          const    Padding(
                padding:  EdgeInsets.all(10.0),
                child: Text(
                  """When oil is discovered in 1920s Oklahoma under Osage Nation land, the Osage people are murdered one by one—until the FBI steps in to unravel the mystery.""",
                  style: TextStyle(color: Colors.white),
                ),
              ),
               const SizedBox(
                height: 40,
              ),
              SizedBox(
                height: 200,
                width: 500,
                child: Image.network(
                  'https://image.tmdb.org/t/p/w500//gB5guf07SD8wVqxrx4Scp4LFBq4.jpg',
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
                    width: 10,
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
                    width: 10,
                  ),
                  Text(
                    'Share',
                    style: TextStyle(color: Colors.white, fontSize: 10),
                  )
                ],
              ),
          const    SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 250),
                child: Text(
                  'Radical',
                  style:
                      GoogleFonts.bebasNeue(color: Colors.white, fontSize: 30),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
            const  Padding(
                padding:  EdgeInsets.all(10.0),
                child: Text(
                  """In a Mexican border town plagued by neglect, corruption, and violence, a frustrated teacher tries a radical new method to break through his students’ apathy and unlock their curiosity, their potential… and maybe even their genius.""",
                  style: TextStyle(color: Colors.white),
                ),
              ), const SizedBox(
                height: 40,
              ),
              SizedBox(
                height: 200,
                width: 500,
                child: Image.network(
                  'https://image.tmdb.org/t/p/w500/nCiqQYXJdaw3SqY6XZFx4r1IZTI.jpg',
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
                    width: 10,
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
                    width: 10,
                  ),
                  Text(
                    'Share',
                    style: TextStyle(color: Colors.white, fontSize: 10),
                  )
                ],
              ),
             const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 250),
                child: Text(
                  'Scarygirl',
                  style:
                      GoogleFonts.bebasNeue(color: Colors.white, fontSize: 30),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
             const Padding(
                padding:  EdgeInsets.all(10.0),
                child: Text(
                  """As her world is shrouded in darkness, a young girl must overcome her fears and travel to a mysterious city of light, save her father from a dangerous scientist and prevent the destruction of her planet.""",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
