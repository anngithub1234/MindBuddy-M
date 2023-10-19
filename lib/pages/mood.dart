import 'package:flutter/material.dart';
import 'package:flutter_mind/pages/home.dart';
import 'package:flutter_mind/pages/journal.dart';
import 'package:flutter_mind/pages/profile.dart';
import 'package:flutter_mind/pages/therapist.dart';

class MoodPage extends StatefulWidget {
  const MoodPage({Key? key}) : super(key: key);

  @override
  State<MoodPage> createState() => _MoodPageState();
}

class _MoodPageState extends State<MoodPage> {
  int selectedMoodIndex = 0;
  int selectedWaterIndex = 0;
  int selectedSleepIndex = 0;
  List<String> moods = [
    '😃', // Happy
    '😢', // Sad
    '😡', // Angry
    '😍', // Love
  ];
  List<String> water = [
    '💧', // Happy
    '🥤', // Sad
    '🥛', // Angry
    '🍶', // Love
  ];
  List<String> sleep = [
    '😴', // Happy
    '💤', // Sad
    '🛌', // Angry
    '🌃', // Love
  ];
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
        child: Column(
          children: [
            
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(16.0),
              
               
              child: Text(
                'Lets Check In',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 10),
            Center(child: Text(
              'Mood',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List.generate(moods.length, (index) {
                return InkWell(
                  onTap: () {
                    setState(() {
                      selectedMoodIndex = index;
                    });
                  },
                  child: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color: selectedMoodIndex == index
                          ? Colors.indigo
                          : Colors.transparent,
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: Text(
                        moods[index],
                        style: TextStyle(
                          fontSize: 30,
                          color: selectedMoodIndex == index
                              ? Colors.white
                              : Colors.black,
                        ),
                      ),
                    ),
                  ),
                );
              }),
            ),
            SizedBox(height: 30),
            Text(
              'Water',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List.generate(water.length, (index) {
                return InkWell(
                  onTap: () {
                    setState(() {
                      selectedWaterIndex = index;
                    });
                  },
                  child: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color: selectedWaterIndex == index
                          ? Colors.indigo
                          : Colors.transparent,
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: Text(
                        water[index],
                        style: TextStyle(
                          fontSize: 30,
                          color: selectedWaterIndex == index
                              ? Colors.white
                              : Colors.black,
                        ),
                      ),
                    ),
                  ),
                );
              }),
            ),
            SizedBox(height: 30),
            Text(
              'Sleep',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List.generate(sleep.length, (index) {
                return InkWell(
                  onTap: () {
                    setState(() {
                      selectedSleepIndex = index;
                    });
                  },
                  child: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color: selectedSleepIndex == index
                          ? Colors.indigo
                          : Colors.transparent,
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: Text(
                        sleep[index],
                        style: TextStyle(
                          fontSize: 30,
                          color: selectedSleepIndex == index
                              ? Colors.white
                              : Colors.black,
                        ),
                      ),
                    ),
                  ),
                );
              }),
            ),
            SizedBox(height: 20),
              Center(child: Image.asset('images/mood.png')),
          ],
        ),
      ),
    );
  }
}
