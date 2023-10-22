import 'package:flutter/material.dart';
// import 'package:netflixclone/screens/user_selection.dart';
import 'package:netflixxclone/screens/user_selection.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Add a delay of 3 seconds and then navigate to the next screen.
    Future.delayed(Duration(seconds: 3), () {
      // Navigate to the next screen, for example, MyNextScreen.
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => const User(),
      ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 350, left: 40),
            child: Center(child: Image.asset('images/Logo.png')),
          ),
        ],
      ),
    );
  }
}
