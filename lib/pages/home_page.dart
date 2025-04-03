import 'package:flutter/material.dart';

/// Home page class
class HomePage extends StatelessWidget {
  /// Home page class constructor
  const HomePage({super.key});


  @override
  Widget build(BuildContext context) {
    return
             const Scaffold(
              body: Center(
                child: Text(
                  'Hello there!',
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 28.0),
                ),
              ),

          );
  }
}
