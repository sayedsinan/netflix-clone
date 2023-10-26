import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:netflixxclone/constant/constant.dart';
import 'package:netflixxclone/screens/details_screens.dart';

class Trendingslider extends StatelessWidget {
  const Trendingslider({super.key, required this.snapshot});
  final AsyncSnapshot snapshot;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: CarouselSlider.builder(
        itemCount: snapshot.data!.length,
        options: CarouselOptions(
            height: 200,
            autoPlay: true,
            viewportFraction: 0.55,
            enlargeCenterPage: true,
            pageSnapping: true,
            autoPlayCurve: Curves.fastOutSlowIn,
            autoPlayAnimationDuration: const Duration(seconds: 1)),
        itemBuilder: (context, itemIndex, pageViewIndex) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Details(
                    movie: snapshot.data[itemIndex],
                  ),
                ),
              );
            },
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: SizedBox(
                height: 200,
                width: 200,
                child: Image.network(
                    filterQuality: FilterQuality.high,
                    fit: BoxFit.cover,
                    '${Constan.imagPath}${snapshot.data[itemIndex].backdrop_path}'),
              ),
            ),
          );
        },
      ),
    );
  }
}

class MoviesSlider extends StatelessWidget {
  const MoviesSlider({super.key, required this.snapshot});
  final AsyncSnapshot snapshot;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: CarouselSlider.builder(
        itemCount: snapshot.data.length,
        options: CarouselOptions(
            height: 200,
            autoPlay: true,
            viewportFraction: 0.55,
            enlargeCenterPage: true,
            pageSnapping: true,
            autoPlayCurve: Curves.fastOutSlowIn,
            autoPlayAnimationDuration: const Duration(seconds: 2)),
        itemBuilder: (context, itemIndex, pageViewIndex) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Details(
                    movie: snapshot.data[itemIndex],
                  ),
                ),
              );
            },
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: SizedBox(
                height: 200,
                width: 200,
                child: Image.network(
                    filterQuality: FilterQuality.high,
                    fit: BoxFit.cover,
                    '${Constan.imagPath}${snapshot.data[itemIndex].backdrop_path}'),
              ),
            ),
          );
        },
      ),
    );
  }
}
// Hwello mj ldn        m imahe pant

class upComing extends StatelessWidget {
  const upComing({super.key, required this.snapshot});
  final AsyncSnapshot snapshot;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
            autoPlayAnimationDuration: const Duration(seconds: 1)),
        itemBuilder: (context, itemIndex, pageViewIndex) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Details(
                    movie: snapshot.data[itemIndex],
                  ),
                ),
              );
            },
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: SizedBox(
                height: 200,
                width: 200,
                child: Image.network(
                    filterQuality: FilterQuality.high,
                    fit: BoxFit.cover,
                    '${Constan.imagPath}${snapshot.data[itemIndex].backdrop_path}'),
              ),
            ),
          );
        },
      ),
    );
  }
}

class previewSlider extends StatelessWidget {
  const previewSlider({super.key, required this.snapshot});
  final AsyncSnapshot snapshot;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Details(
                    movie: snapshot.data[itemIndex],
                  ),
                ),
              );
            },
            child: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: SizedBox(
                height: 50,
                width: 150,
                child: Image.network(
                    filterQuality: FilterQuality.high,
                    fit: BoxFit.cover,
                    '${Constan.imagPath}${snapshot.data[itemIndex].backdrop_path}'),
              ),
            ),
          );
        },
      ),
    );
  }
}
