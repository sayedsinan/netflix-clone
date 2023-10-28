import 'package:flutter/material.dart';


class More extends StatelessWidget {
  const More({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: ListView(
          children: [
            Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: SizedBox(
                        height: 100,
                        width: 70,
                        child: Image.asset("images/User1.png"),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: SizedBox(
                        height: 90,
                        width: 65,
                        child: Image.asset('images/User2.png'),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: SizedBox(
                        height: 90,
                        width: 65,
                        child: Image.asset('images/User3.png'),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: SizedBox(
                        height: 90,
                        width: 65,
                        child: Image.asset('images/KidsUser.png'),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Container(
                        height: 60,
                        width: 65,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white)),
                        child: const Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                ),
                const Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 30),
                      child: Text(
                        'User 1',
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 45),
                      child: Text(
                        'User 2 ',
                        style: TextStyle(fontSize: 10, color: Colors.white),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 50),
                      child: Text(
                        'User 3',
                        style: TextStyle(fontSize: 10, color: Colors.white),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 50),
                      child: Text(
                        'Kids',
                        style: TextStyle(fontSize: 10, color: Colors.white),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                const Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 80),
                      child: Icon(
                        Icons.edit,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      'Manage Profiles',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    )
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                Container(
                  height: 300,
                  width: 400,
                  decoration:const  BoxDecoration(color: Color.fromARGB(255, 19, 19, 19)),
                  child: Column(
                    children: [
                  const    Padding(
                        padding:  EdgeInsets.only(left: 50,top: 30),
                        child:  Row(
                          children: [
                            Icon(
                              Icons.message_sharp,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              'Tell friends about Netflix.',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 28,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 30,),
                        child: Text(
                          """"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sit quam dui, vivamus
                   """
                          "",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      // SizedBox(height: 10,),
                      const Padding(
                        padding: EdgeInsets.only(right: 160),
                        child: Text(
                          'Terms & Conditions',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                       const SizedBox(height: 10,),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 60, ),
                            child: Container(
                              color: Colors.black,
                              width: 200,
                              child: TextFormField(),
                            ),
                          ),
                          Container(
                            height: 45,
                            width: 80,
                            color: Colors.white,
                            child: const Padding(
                              padding:
                                   EdgeInsets.only(top: 15, left: 10),
                              child:  Text('Copy Link'),
                            ),
                          )
                        ],
                      ),
                     const SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 70,),
                        child: Row(
                          children: [
                            SizedBox(
                              height: 50,
                              width: 50,
                              child: Image.asset('images/Whatsapp.png'),
                            ),
                            const SizedBox(
                              width: 40,
                            ),
                            SizedBox(
                              height: 50,
                              width: 50,
                              child: Image.asset('images/Gmail.png'),
                            ),
                            const SizedBox(
                              width: 40,
                            ),
                            SizedBox(
                              height: 50,
                              width: 50,
                              child: Image.asset('images/Facebook.png'),
                            ),
                            const SizedBox(
                              width: 40,
                            ),
                            const Column(
                              children: [
                                Icon(
                                  Icons.more_horiz_outlined,
                                  color: Colors.white,
                                ),
                                Text(
                                  'More',
                                  style: TextStyle(color: Colors.white),
                                )
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 40),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.check,
                        color: Colors.white,
                        size: 40,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text(
                        'My List',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      Divider(
                        color: Colors.grey[900],
                        height: 20,
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 160),
                  child: Column(
                    children: [
                      Text(
                        'App Settings',
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 25),
                        child: Text(
                          "Account",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 40),
                        child: Text(
                          'Help',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 20, bottom: 20),
                        child: Text(
                          'Sign Out',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      )
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
