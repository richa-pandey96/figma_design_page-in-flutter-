import 'package:flutter/material.dart';
import 'live_vote_page.dart'; // Import the LiveVotePage

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,  // Remove the debug banner
      title: 'Live Vote App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LiveVotePage(),  // Set the home page to LiveVotePage
    );
  }
}
