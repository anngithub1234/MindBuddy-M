import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class NoteEdit extends StatefulWidget {
  const NoteEdit({super.key});

  @override
  State<NoteEdit> createState() => _NoteEditState();
}

class _NoteEditState extends State<NoteEdit> {
  String date = DateTime.now().toString();
  TextEditingController titleController = TextEditingController();
  TextEditingController contController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo[50],
      appBar: AppBar(
        backgroundColor: Colors.indigo[50],
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          'Add a new journal',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(children: [
          TextField(
            controller: titleController,
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: 'Journal Title',
            ),
          ),
          SizedBox(
            height: 8.0,
          ),
          Text(
            date,
          ),
          SizedBox(
            height: 28.0,
          ),
          TextField(
            controller: contController,
            keyboardType: TextInputType.multiline,
            maxLength: null,
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: 'Add your thoughts..',
            ),
          ),
        ]),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () async {
            FirebaseFirestore.instance.collection('Notes').add({
              "Title": titleController,
              "date": date,
              "content": contController
            }).then((value) {
              print(value.id);
              Navigator.pop(context);
            });
          },
          child: Icon(Icons.save)),
    );
  }
}
