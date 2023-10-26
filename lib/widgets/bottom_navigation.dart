import 'package:flutter/material.dart';
import 'package:netflixxclone/screens/coming_soon.dart';
import 'package:netflixxclone/screens/downloads.dart';
import 'package:netflixxclone/screens/home_screen.dart';
import 'package:netflixxclone/screens/more.dart';
import 'package:netflixxclone/screens/search.dart';

class Bottom extends StatefulWidget {
  const Bottom({super.key});

  @override
  State<Bottom> createState() => _BottomState();
}

class _BottomState extends State<Bottom> {
  int indexColor = 0;
  List screen = [
    const Home(),
    const Search(),
    const Coming(),
    const Downloads(),
    const More()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screen[indexColor],
      
      bottomNavigationBar: SizedBox(
        height: 70,
        child: BottomAppBar(
          color: Colors.grey[900],
          shape: const CircularNotchedRectangle(),
          child: Padding(
            padding: const EdgeInsets.only(top: 5, bottom: 7.5),
            child: Column(
              children: [
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          indexColor = 0;
                        });
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(left: 40),
                        child: Icon(
                          Icons.home_outlined,
                          size: 30,
                          color: indexColor == 0
                              ? const Color.fromARGB(255, 147, 43, 36)
                              : Colors.grey,
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          indexColor = 1;
                        });
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 40,
                        ),
                        child: Icon(
                          Icons.search,
                          size: 30,
                          color: indexColor == 1
                              ? const Color.fromARGB(255, 147, 43, 36)
                              : Colors.grey,
                        ),
                      ),
                    ),
                    // const   SizedBox(width: 10),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          indexColor = 2;
                        });
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(left: 50),
                        child: Icon(
                          Icons.play_circle,
                          size: 30,
                          color: indexColor == 2
                              ? const Color.fromARGB(255, 147, 43, 36)
                              : Colors.grey,
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          indexColor = 3;
                        });
                      },
                      child: Padding( 
                        padding: const EdgeInsets.only(left: 50),
                        child: Icon(
                          Icons.download,
                          size: 30,
                          color: indexColor == 3
                              ? const Color.fromARGB(255, 147, 43, 36)
                              : Colors.grey,
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          indexColor = 4;
                        });
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(left: 40),
                        child: Icon(
                          Icons.more_horiz_outlined,
                          size: 30,
                          color: indexColor == 4
                              ? const Color.fromARGB(255, 147, 43, 36)
                              : Colors.grey,
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding:const  EdgeInsets.only(bottom: 10, left: 35),
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            indexColor = 0;
                          });
                        },
                        child:const Text(
                          'Home',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    const   SizedBox(
                        width: 20,
                      ),
                      Padding(
                        padding:const EdgeInsets.only(left: 10),
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              indexColor = 1;
                            });
                          },
                          child:const Text(
                            'Search',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    const  SizedBox(
                        width: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              indexColor = 2;
                            });
                          },
                          child:const Text(
                            'Coming soon',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    const  SizedBox(
                        width: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            indexColor = 3;
                          });
                        },
                        child: const Text(
                          'Downloads',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    const  SizedBox(
                        width: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            indexColor = 4;
                          });
                        },
                        child:const Text(
                          'More',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
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
