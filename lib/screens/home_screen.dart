import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
                                        onPressed: () {
                                         
                                        },
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: Colors
                                              .grey[400], 
                                        ),
                                        child:const  Row(
                                          children: [
                                            Icon(
                                              Icons.play_arrow,
                                              color: Colors
                                                  .black, // Replace with the desired icon
                                            ),
                                            SizedBox(
                                                width:
                                                    5), // Add some spacing between the icon and text
                                            Text(
                                              'Play',
                                              style:
                                                  TextStyle(color: Colors.black),
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
                  width: double.infinity,
                  child: CarouselSlider.builder(
                    itemCount: 10,
                    options: CarouselOptions(
                        height: 150,
                        autoPlay: true,
                        viewportFraction: 0.55,
                        enlargeCenterPage: true,
                        pageSnapping: true,
                        autoPlayCurve: Curves.fastOutSlowIn,
                        autoPlayAnimationDuration: const Duration(seconds: 2)),
                    itemBuilder: (context, itemIndex, pageViewIndex) {
                      return ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: Container(
                          height: 50,
                          width: 150,
                          color: Colors.amber,
                        ),
                      );
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
                  width: double.infinity,
                  child: CarouselSlider.builder(
                    itemCount: 10,
                    options: CarouselOptions(
                        height: 200,
                        autoPlay: true,
                        viewportFraction: 0.55,
                        enlargeCenterPage: true,
                        pageSnapping: true,
                        autoPlayCurve: Curves.fastOutSlowIn,
                        autoPlayAnimationDuration: const Duration(seconds: 2)),
                    itemBuilder: (context, itemIndex, pageViewIndex) {
                      return ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Container(
                          height: 200,
                          width: 200,
                          color: Colors.amber,
                        ),
                      );
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
                  width: double.infinity,
                  child: CarouselSlider.builder(
                    itemCount: 10,
                    options: CarouselOptions(
                        height: 200,
                        autoPlay: true,
                        viewportFraction: 0.55,
                        enlargeCenterPage: true,
                        pageSnapping: true,
                        autoPlayCurve: Curves.fastOutSlowIn,
                        autoPlayAnimationDuration: const Duration(seconds: 2)),
                    itemBuilder: (context, itemIndex, pageViewIndex) {
                      return ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Container(
                          height: 200,
                          width: 200,
                          color: Colors.amber,
                        ),
                      );
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
                  width: double.infinity,
                  child: CarouselSlider.builder(
                    itemCount: 10,
                    options: CarouselOptions(
                        height: 200,
                        autoPlay: true,
                        viewportFraction: 0.55,
                        enlargeCenterPage: true,
                        pageSnapping: true,
                        autoPlayCurve: Curves.fastOutSlowIn,
                        autoPlayAnimationDuration: const Duration(seconds: 2)),
                    itemBuilder: (context, itemIndex, pageViewIndex) {
                      return ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Container(
                          height: 200,
                          width: 200,
                          color: Colors.amber,
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
