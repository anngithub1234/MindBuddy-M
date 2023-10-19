import 'dart:ffi';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mind/pages/description.dart';
import 'package:flutter_mind/pages/journal.dart';
import 'package:flutter_mind/pages/mood.dart';
import 'package:flutter_mind/pages/profile.dart';
import 'package:flutter_mind/pages/therapist.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

final user = FirebaseAuth.instance.currentUser!;

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: GestureDetector(
            onTap: () {
              FirebaseAuth.instance.signOut();
            },
            child: Icon(
              Icons.logout,
              color: Colors.black,
            )),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white.withOpacity(0.7),
        items: [
          BottomNavigationBarItem(
            icon: GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomePage()));
              },
              child: Icon(
                Icons.home_outlined,
                size: 40,
                color: Colors.indigo[800],
              ),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => JournalPage()));
              },
              child: Icon(
                Icons.book_outlined,
                size: 40,
                color: Colors.indigo[800],
              ),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => TherapistPage()));
              },
              child: Icon(
                Icons.group_outlined,
                size: 40,
                color: Colors.indigo[800],
              ),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ProfilePage()));
              },
              child: Icon(
                Icons.person_2_outlined,
                size: 40,
                color: Colors.indigo[800],
              ),
            ),
            label: '',
          ),
        ],
      ),
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Text(
                    "Welcome buddy, " + user.email!,
                    style: TextStyle(
                      fontSize: 24.0,
                      color: Color.fromARGB(255, 87, 88, 89),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 20.0),
                Center(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MoodPage()),
                      );
                    },
                    child: Text(
                      'How is your day?',
                      style: TextStyle(
                        fontSize: 15.0,
                        color: Color.fromARGB(255, 87, 88, 89),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20.0),
                Center(
                  child: Text(
                    'What do you like to do today?',
                    style: TextStyle(
                      fontSize: 15.0,
                      color: Color.fromARGB(255, 87, 88, 89),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 40.0),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Container(
                    color: Colors.indigo[300],
                    padding: EdgeInsets.symmetric(vertical: 15),
                    child: Center(
                      child: Row(
                        children: [
                          SizedBox(width: 50),
                          Image.asset(
                            'images/d.png',
                            alignment: Alignment.center,
                            width: 100,
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => DescPage()));
                            },
                            child: Text(
                              'Meditation',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 25.0),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Container(
                    color: Colors.indigo[200],
                    padding: EdgeInsets.symmetric(vertical: 25),
                    child: Center(
                      child: Row(
                        children: [
                          SizedBox(
                            width: 50,
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => DescPage()));
                            },
                            child: Text(
                              'Reflection',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Image.asset(
                            'images/c.png',
                            alignment: Alignment.center,
                            width: 100,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 25.0),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  child: Container(
                    color: Colors.indigo[300],
                    child: Center(
                      child: Row(
                        children: [
                          SizedBox(
                            width: 50,
                          ),
                          Image.asset(
                            'images/b.png',
                            alignment: Alignment.center,
                            width: 100,
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => DescPage()));
                            },
                            child: Text(
                              'Mindfulness',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 25.0),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Container(
                    color: Colors.indigo[200],
                    child: Center(
                      child: Row(
                        children: [
                          SizedBox(
                            width: 90,
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => DescPage()));
                            },
                            child: Text(
                              'Yourself',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          SizedBox(width: 30),
                          Image.asset(
                            'images/a.png',
                            alignment: Alignment.center,
                            width: 100,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
