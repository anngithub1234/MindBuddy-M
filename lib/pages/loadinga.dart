import 'package:flutter/material.dart';
import 'package:flutter_mind/pages/auth_page.dart';


class LoadingaPage extends StatefulWidget {
  const LoadingaPage({Key? key}) : super(key: key);

  @override
  State<LoadingaPage> createState() => _LoadingaPageState();
}

class _LoadingaPageState extends State<LoadingaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 10),
              Center(child: Image.asset('images/loada.png')),
              SizedBox(height: 60),
              Center(child: Image.asset('images/quote.png')),
              SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 90.0,
                ),
                child: GestureDetector(
                  onTap: () {
                    // Add your desired action here
                    // For example, navigate to a new page
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => AuthPage()),
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
                        'GET STARTED',
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
