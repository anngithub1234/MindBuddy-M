import 'package:flutter/material.dart';
import 'package:flutter_mind/pages/exercise.dart';
import 'package:flutter_mind/pages/home.dart';
import 'package:flutter_mind/pages/journal.dart';
import 'package:flutter_mind/pages/profile.dart';
import 'package:flutter_mind/pages/therapist.dart';

class DescPage extends StatefulWidget {
  const DescPage({Key? key}) : super(key: key);

  @override
  State<DescPage> createState() => _DescPageState();
}

class _DescPageState extends State<DescPage> {
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
      body: SafeArea(
        child: ListView(
          children: [
            SizedBox(height: 60.0),
            Center(
              child: Text(
                'Meditation',
                style: TextStyle(
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 20.0),
            Container(
              padding: const EdgeInsets.all(12),
              margin: const EdgeInsets.symmetric(horizontal: 45),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Search',
                    style: TextStyle(
                        color: Colors.black54, fontWeight: FontWeight.w600),
                  ),
                  Icon(
                    Icons.search,
                    color: Colors.black54,
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.0),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 5.0),
              child: GestureDetector(
                onTap: () {
                  // Add your desired action here
                  // For example, navigate to a registration page
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ExPage()),
                  );
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                  child: Container(
                    width: 200, // Set the desired width
                    height: 80, // Set the desired height

                    child: Card(
                      color: Colors.indigo[300],
                      elevation: 2,
                      child: ListTile(
                        title: Align(
                          alignment: Alignment.center,
                          child: Text(
                            'Mindfull Meditation',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        trailing: Icon(
                          Icons.arrow_forward,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 15.0),
              child: GestureDetector(
                onTap: () {
                  // Add your desired action here
                  // For example, navigate to a registration page
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ExPage()),
                  );
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                  child: Container(
                    width: 100, // Set the desired width
                    height: 80, // Set the desired height

                    child: Card(
                      color: Colors.indigo[300],
                      elevation: 2,
                      child: ListTile(
                        title: Align(
                          alignment: Alignment.center,
                          child: Text(
                            'Love-Kind Meditation',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        trailing: Icon(
                          Icons.arrow_forward,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 15.0),
              child: GestureDetector(
                onTap: () {
                  // Add your desired action here
                  // For example, navigate to a registration page
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ExPage()),
                  );
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                  child: Container(
                    width: 200, // Set the desired width
                    height: 80, // Set the desired height

                    child: Card(
                      color: Colors.indigo[300],
                      elevation: 2,
                      child: ListTile(
                        title: Align(
                          alignment: Alignment.center,
                          child: Text(
                            'Transcendental',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        trailing: Icon(
                          Icons.arrow_forward,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 15.0),
              child: GestureDetector(
                onTap: () {
                  // Add your desired action here
                  // For example, navigate to a registration page
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ExPage()),
                  );
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                  child: Container(
                    width: 200, // Set the desired width
                    height: 80, // Set the desired height

                    child: Card(
                      color: Colors.indigo[300],
                      elevation: 2,
                      child: ListTile(
                        title: Align(
                          alignment: Alignment.center,
                          child: Text(
                            'Body Scan Meditation',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        trailing: Icon(
                          Icons.arrow_forward,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 15.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: Container(
                  width: 200, // Set the desired width
                  height: 80, // Set the desired height

                  child: Card(
                    color: Colors.indigo[300],
                    elevation: 2,
                    child: ListTile(
                      title: Align(
                        alignment: Alignment.center,
                        child: Text(
                          'Easy Meditation',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      trailing: Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
