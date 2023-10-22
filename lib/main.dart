import 'package:flutter/material.dart';
import 'package:netflixxclone/screens/splash_screen.dart';
// import 'package:netflixclone/screens/splash_screen.dart';
// import 'package:netflixclone/screens/downloads.dart';
// import 'package:netflixclone/screens/more.dart';
// import 'package:netflixclone/screens/search.dart';
// import 'package:netflixclone/screens/splash_screen.dart';
// import 'package:netflixclone/screens/user_selection.dart';
// import 'package:netflixclone/widgets/bottom_navigation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:SplashScreen() ,
  
    );
  }
}
