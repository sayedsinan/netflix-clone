import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflixxclone/constant/constant.dart';
import 'package:netflixxclone/models/movie.dart';

class Details extends StatelessWidget {
  const Details({super.key, required this.movie});
  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: CustomScrollView(
          slivers: [
            SliverAppBar.large(
              backgroundColor: Colors.black87,
              expandedHeight: 500,
              pinned: true,
              leading: null,
              floating: true,
              flexibleSpace: FlexibleSpaceBar(
                background: ClipRRect(
                  borderRadius:
                      const BorderRadius.only(bottomLeft:  Radius.circular(24)),
                  child: Image.network(
                    '${Constan.imagPath}${movie.backdrop_path}',
                    filterQuality: FilterQuality.high,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'OverView',
                      style: GoogleFonts.bebasNeue(
                          color: Colors.white, fontSize: 30),
                    ),
                    const SizedBox(
                      height: 18,
                    ),
                    Text(
                      movie.overview,
                      style: GoogleFonts.bebasNeue(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    SizedBox(
                      child: Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Row(
                              children: [
                                Text('Rating :',style: GoogleFonts.bebasNeue(color: Colors.white,fontSize: 15),),
                                Text(
                                  movie.vote_average.toString(),
                                  style:  const TextStyle(color: Colors.white),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
