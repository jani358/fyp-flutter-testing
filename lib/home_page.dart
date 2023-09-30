// Import the image asset
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Image logo at the top
            Image.asset(
              'assets/logo.png', // Update with the actual path to your logo image
              width: 100, // Set the width to your desired size
              height: 100, // Set the height to your desired size
              color: Colors.black,
            ),
            SizedBox(height: 16), // Add some spacing below the image

            // Animated text widget
            DefaultTextStyle(
              style: TextStyle(
                fontSize: 32.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              child: AnimatedTextKit(
                animatedTexts: [
                  TypewriterAnimatedText('IT PATHFINDERS'),
                ],
                onTap: () {
                  Navigator.pushReplacementNamed(context, '/login');
                },
              ),
            ),
            SizedBox(height: 32), // Add some spacing below the animated text

            // Login and Sign Up buttons
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/login');
              },
              child: Text('Login'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/signup');
              },
              child: Text('Sign Up'),
            ),

            SizedBox(height: 32), // Add spacing between buttons and social auth buttons

            // Google authentication button
            ElevatedButton.icon(
              onPressed: () {
                // Add Google authentication logic
              },
              icon: Image.asset(
                'assets/google_logo.png', // Update with the actual path to your Google logo image
                width: 24, // Set the width to your desired size
                height: 24, // Set the height to your desired size
              ),
              label: Text('Sign in with Google'),
            ),

            // Facebook authentication button
            ElevatedButton.icon(
              onPressed: () {
                // Add Facebook authentication logic
              },
              icon: Icon(Icons.facebook), // You can use a Facebook logo icon
              label: Text('Sign in with Facebook'),
            ),
          ],
        ),
      ),
    );
  }
}
