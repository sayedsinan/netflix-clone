import 'package:flutter/material.dart';

class Downloads extends StatelessWidget {
  const Downloads({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 50, right: 240),
              child: Text(
                'Smart Downloads',
                style: TextStyle(color: Colors.white),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Padding(
              padding: EdgeInsets.only(right: 60),
              child: Text(
                'Intoducing Downloading For You',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                """Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sit quam dui, vivamus
         .""",
                style: TextStyle(color: Colors.white),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const CircleAvatar(
              radius: 100,
              backgroundColor: Colors.grey,
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('SETUP'),
            ),
            const SizedBox(
              height: 50,
            ),
            ElevatedButton(
              onPressed: () {
              
              },
              child:  const Text('Find Something to Download'),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.grey),
              ),
            )
          ],
        ),
      ),
    );
  }
}
