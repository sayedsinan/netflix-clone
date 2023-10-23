import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
                  hintStyle: TextStyle(color: Colors.grey[700])),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                'Top Searches',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '',
                      style: GoogleFonts.bebasNeue(
                          color: Colors.white, fontSize: 30),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: CarouselSlider.builder(
                        itemCount: 1,
                        options: CarouselOptions(
                            height: 150,
                            
                            ),
                        itemBuilder: (context, itemIndex, pageViewIndex) {
                          return Container(
                            height: 50,
                            width: 500,
                            color: Colors.amber,
                          );
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 32,
                    ),
                      SizedBox(
                      width: double.infinity,
                      child: CarouselSlider.builder(
                        itemCount: 1,
                        options: CarouselOptions(
                            height: 150,
                            
                            ),
                        itemBuilder: (context, itemIndex, pageViewIndex) {
                          return Container(
                            height: 50,
                            width: 500,
                            color: Colors.amber,
                          );
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 32,
                    ),  SizedBox(
                      width: double.infinity,
                      child: CarouselSlider.builder(
                        itemCount: 1,
                        options: CarouselOptions(
                            height: 150,
                            
                            ),
                        itemBuilder: (context, itemIndex, pageViewIndex) {
                          return Container(
                            height: 50,
                            width: 500,
                            color: Colors.amber,
                          );
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 32,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
