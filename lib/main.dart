import 'package:flutter/material.dart';
import 'first_screen.dart';
import 'second_screen.dart';
import 'third_screen.dart'; // Import the third screen.

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigation Codelab',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/first', // Set initial route to the FirstScreen.
      routes: {
        '/first': (context) => FirstScreen(), // The home route.
        '/second': (context) => SecondScreen(), // Named route for the second screen.
        '/third': (context) => ThirdScreen(), // Named route for the third screen.
      },
    );
  }
}
