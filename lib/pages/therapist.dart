import 'package:flutter/material.dart';
import 'package:flutter_mind/pages/home.dart';
import 'package:flutter_mind/pages/journal.dart';
import 'package:flutter_mind/pages/profile.dart';
import 'package:flutter_mind/pages/tform.dart';

class TherapistPage extends StatefulWidget {
  const TherapistPage({Key? key}) : super(key: key);

  @override
  State<TherapistPage> createState() => _TherapistPageState();
}

class _TherapistPageState extends State<TherapistPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                color: Colors.black,
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
                color: Colors.black,
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
                color: Colors.indigo[900],
              ),
            ),
            label: '',
          ),
        ],
      ),
      backgroundColor: Theme.of(context).colorScheme.background,
      body: SafeArea(
        child: Center(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 30),
              Text('Therapists; Information'),
              //SizedBox(height: 60),
              /*Container(
                padding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 3.0),
                color: Colors.indigo[300],
                child: ListTile(
                  contentPadding: EdgeInsets.all(8.0),
                  leading: Icon(Icons.star),
                  title: Text('Tile Title'),
                  subtitle: Text('Tile Subtitle'),
                  trailing: IconButton(
                    icon: Icon(Icons.delete),
                    onPressed: () {
                      // Delete tile action
                    },
                  ),
                  onTap: () {
                    // Tile tap action
                  },
                ),
              ),*/
              SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 50.0,
                ),
                child: GestureDetector(
                  child: Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0),
                    decoration: BoxDecoration(
                        color: Colors.indigo[300],
                        borderRadius: BorderRadius.circular(12)),
                    child: Center(
                      child: ListTile(
                        title: Text(
                          'Name of the therapist',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text(
                          'Tile Subtitle',
                          style: TextStyle(color: Colors.white),
                        ),
                        trailing: IconButton(
                          icon: Icon(Icons.delete),
                          onPressed: () {
                            // Delete tile action
                          },
                        ),
                        onTap: () {
                          // Tile tap action
                        },
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 90.0,
              ),
              child: GestureDetector(
                onTap: () {
                      // Add your desired action here
                      // For example, navigate to a registration page
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => TformPage()),
                      );
                    },
                child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0),
                  decoration: BoxDecoration(
                      color: Colors.indigo[900],
                      borderRadius: BorderRadius.circular(12)),
                  child: Center(
                    child: Text(
                      'ADD',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
            ],
          ),
        ),
      ),
    );
  }
}
