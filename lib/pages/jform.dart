import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mind/pages/journal.dart';

class JformPage extends StatefulWidget {
  JformPage(this.doc, {Key? key}) : super(key: key);
  QueryDocumentSnapshot doc;

  @override
  State<JformPage> createState() => _JformPageState();
}

class _JformPageState extends State<JformPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo[50],
      appBar: AppBar(
        backgroundColor: Colors.indigo[50],
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          'journal',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: SafeArea(
            child: Center(
                child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
          SizedBox(height: 18.0),
          Text(widget.doc["Title"]),
          SizedBox(height: 8.0),
          Text(widget.doc["date"]),
          SizedBox(height: 8.0),
          Text(widget.doc["content"], overflow: 
          TextOverflow.ellipsis,)
          
        ]
          
        ))),
      ),
    );
  }
}
