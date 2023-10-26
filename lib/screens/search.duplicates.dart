// SingleChildScrollView(
//               physics: const BouncingScrollPhysics(),
//               child: Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       '',
//                       style: GoogleFonts.bebasNeue(
//                           color: Colors.white, fontSize: 30),
//                     ),
//                 const    SizedBox(
//                       height: 15,
//                     ),
//                     SizedBox(
//                       width: double.infinity,
//                       child: CarouselSlider.builder(
//                         itemCount: 1,
//                         options: CarouselOptions(
//                             height: 150,
//                             ),
//                         itemBuilder: (context, itemIndex, pageViewIndex) {
//                           return Container(
//                             height: 50,
//                             width: 500,
//                             color: Colors.amber,
//                           );
//                         },
//                       ),
//                     ),  
//                         const SizedBox(
//                       height: 20,
//                     ),
//                       SizedBox(
//                       width: double.infinity,
//                       child: CarouselSlider.builder(
//                         itemCount: 1,
//                         options: CarouselOptions(
//                             height: 150,
                            
//                             ),
//                         itemBuilder: (context, itemIndex, pageViewIndex) {
//                           return SizedBox(
//                             height: 50,
//                             width: 500,
//                             child: Image.network('https://image.tmdb.org/t/p/w500//A4j8S6moJS2zNtRR8oWF08gRnL5.jpg'),
//                           );
//                         },
//                       ),
//                     ),
//                     const SizedBox(
//                       height: 20,
//                     ),  SizedBox(
//                       width: double.infinity,
//                       child: CarouselSlider.builder(
//                         itemCount: 1,
//                         options: CarouselOptions(
//                             height: 150,
//                             ),
//                         itemBuilder: (context, itemIndex, pageViewIndex) {
//                           return SizedBox(
//                             height: 50,
//                             width: 500,
//                             child: Image.network('https://image.tmdb.org/t/p/w500//dZbLqRjjiiNCpTYzhzL2NMvz4J0.jpg'),
//                           );
//                         },
//                       ),
//                     ),
//                     const SizedBox(
//                       height: 20,
//                     ),
//                   ],
//                 ),
//               ),
//             ),