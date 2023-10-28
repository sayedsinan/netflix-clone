import 'package:flutter/material.dart';
import 'package:netflixxclone/screens/coming_soon_duplicats.dart';
import 'package:netflixxclone/screens/search.duplicates.dart';
import 'package:netflixxclone/widgets/bottom_navigation.dart';
// import 'package:netflixclone/widgets/bottom_navigation.dart';

class User extends StatelessWidget {
  const User({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 110),
                child: Container(
                  height: 200,
                  width: 180,
                  child: Image.asset(
                    'images/Logo.png',
                  ),
                ),
              ),
              const SizedBox(
                width: 60,
              ),
              const Icon(
                Icons.edit,
                color: Colors.white,
              )
            ],
          ),
          const SizedBox(
            height: 100,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 80),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const Bottom();
                    }));
                  },
                  child: Container(
                    child: Image.asset(
                      'images/User1.png',
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 50,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return SearchDup();
                  }));
                },
                child: Container(
                  child: Image.asset('images/User3.png'),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 100),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return Coming();
                    }));
                  },
                  child: Text(
                    'User 1',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              SizedBox(
                width: 110,
              ),
              Text(
                'User 2',
                style: TextStyle(color: Colors.white),
              )
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 80),
                child: Container(
                  child: Image.asset(
                    'images/User2.png',
                  ),
                ),
              ),
              const SizedBox(
                width: 50,
              ),
              Container(
                child: Image.asset('images/KidsUser.png'),
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 100),
                child: Text(
                  'User 3',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(
                width: 110,
              ),
              Text(
                'Kids',
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          const Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 90),
                child: Icon(
                  Icons.add_circle_rounded,
                  color: Colors.white,
                  size: 70,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 90),
            child: Row(
              children: [
                Text(
                  'Add Profile',
                  style: TextStyle(color: Colors.white),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
