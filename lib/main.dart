import 'package:flutter/material.dart';
import 'package:flutter_mind/Themes/dark.dart';
import 'package:flutter_mind/Themes/light.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_mind/pages/jform.dart';
import 'package:flutter_mind/pages/journal.dart';
import 'package:flutter_mind/pages/loading.dart';
import 'package:flutter_mind/pages/profile.dart';
import 'firebase_options.dart';
import 'package:firebase_auth/firebase_auth.dart';



import 'package:flutter_mind/pages/loadinga.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
   
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: lightTheme,
      darkTheme: darkTheme,
      debugShowCheckedModeBanner: false,
      home: LoadingPage(),
    );
  }
}
