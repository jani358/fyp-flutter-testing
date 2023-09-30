import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class AnimationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Image logo
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
                  Navigator.pushNamed(context, '/login');
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
