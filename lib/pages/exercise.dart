import 'package:flutter/material.dart';
import 'package:flutter_mind/pages/description.dart';

class ExPage extends StatefulWidget {
  const ExPage({Key? key}) : super(key: key);

  @override
  State<ExPage> createState() => _ExPageState();
}

class _ExPageState extends State<ExPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => DescPage()),
                    );
                  },
                  child: Icon(
                    Icons.arrow_back,
                    color: Colors.indigo[800],
                  ),
                ),
                SizedBox(height: 20.0),
                Center(
                  child: Text(
                    'Mindful Meditation',
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 10.0),
                Card(
                  color: Colors.indigo[300],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: Image.asset(
                            'images/ex1.png', // Replace with the path to your image
                            // Adjust the height of the image as needed
                            // Adjust the image fit as needed
                          ),
                        ),
                        SizedBox(height: 8.0),
                        Center(
                          child: Text(
                            'Choose a location where you can sit quietly without distractions. It could be a dedicated meditation space or simply a quiet corner of your home. Sit in a cross-legged position on a cushion or chair, with your spine upright but not rigid. You can also choose to lie down. Close your eyes gently or keep them slightly open with a soft gaze, focusing on a spot on the floor a few feet in front of you.',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 17.0,
                            ),
                          ),
                        ),
                        SizedBox(height: 50.0),
                      ],
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
