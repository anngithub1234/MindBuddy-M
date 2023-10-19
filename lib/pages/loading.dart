import 'package:flutter/material.dart';
import 'package:flutter_mind/pages/loadinga.dart';

//import 'package:flutter_mind/pages/loadinga.dart';

class LoadingPage extends StatefulWidget {
  const LoadingPage({Key? key}) : super(key: key);

  @override
  State<LoadingPage> createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: SafeArea(
        child: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            
            Center(child: Image.asset('images/logo1.png')),
            SizedBox(height: 20),
            Center(child: Image.asset('images/logo.png')),
           
          ]),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.indigo[300],
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => LoadingaPage()),);
        },
        child: Icon(Icons.arrow_forward,),
      ),
    );
  }
}
