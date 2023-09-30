import 'package:flutter/material.dart';
import 'home_page.dart'; // Import the home page
import 'login_page.dart';
import 'signup_page.dart';
import 'new_page.dart';
import 'course_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Set this parameter to false to disable the debug banner
      initialRoute: '/', // Set the initial route to '/'
      routes: {
        '/': (context) => CoursePage(), // Define the route for the HomePage
        '/login': (context) => LoginPage(), // Define the route for LoginPage
        '/signup': (context) => SignupPage(),
        '/course': (context) => CoursePage(), // Define the route for CoursePage
// Define the route for SignupPage
        // '/newpage': (context) => NewPage(),
        // Define the route for NewPage
      },
    );
  }
}
