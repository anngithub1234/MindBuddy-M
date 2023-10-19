import 'package:flutter/material.dart';


class TformPage extends StatefulWidget {
  const TformPage({Key? key}) : super(key: key);

  @override
  State<TformPage> createState() => _TformPageState();
}

class _TformPageState extends State<TformPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        backgroundColor: Colors.indigo[50],
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          'Add a new form',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: SafeArea(
          child: Center(
          child: SingleChildScrollView(
            child: Card(
              color: Colors.indigo[50],
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
                side: BorderSide(color: Colors.white),
              ),
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    SizedBox(height: 30),
                    Text(
                      'Add Therapist',
                      style: TextStyle(
                        color: Color.fromARGB(255, 85, 91, 93),
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 30),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Name of the Therapist',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.0)
                        ),
                        filled: true, // Add a white background
                        fillColor: Colors.white, // Set the background color to white
                      ),
                    ),
                    SizedBox(height: 16.0),
                      Container(
                        height: 50, // Adjust the height of the input field
                        child: TextFormField(
                          decoration: InputDecoration(
                            labelText: 'School',
                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.white,
                              ),
                            ),
                            filled: true,
                            fillColor: Colors.white,
                          ),
                        ),
                      ),
                    SizedBox(height: 16.0),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Phone Number',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.0)
                        ),
                        filled: true,
                        fillColor: Colors.white,
                      ),
                      keyboardType: TextInputType.phone,
                    ),
                    SizedBox(height: 16.0),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Location',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.0)
                        ),
                        filled: true,
                        fillColor: Colors.white,
                      ),
                    ),
                    SizedBox(height: 16.0),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Date and Time',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.0)
                        ),
                        filled: true,
                        fillColor: Colors.white,
                      ),
                    ),
                    SizedBox(height: 16.0),
                    DropdownButtonFormField(
                      decoration: InputDecoration(
                        labelText: 'Session Type',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.0)
                        ),
                        filled: true,
                        fillColor: Colors.white,
                      ),
                      items: [
                        DropdownMenuItem(
                          value: 'Online',
                          child: Text('Online'),
                        ),
                        DropdownMenuItem(
                          value: 'Offline',
                          child: Text('Offline'),
                        ),
                      ],
                      onChanged: (value) {
                        // Handle dropdown value change
                      },
                    ),
                     SizedBox(height: 30),
                    ElevatedButton(
                      onPressed: () {
                        // Handle form submission
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(255, 26, 35,
                            126), // Set the button color to indigo[900]
                      ),
                      child: Text('Submit'),
                    ),
                     SizedBox(height: 30),
                  ],
                ),
              ),
            ),
          ),
          ),
        ),
      ),
    );
  }
}
