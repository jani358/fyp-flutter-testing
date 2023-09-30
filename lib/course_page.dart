import 'package:flutter/material.dart';

class CoursePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Course Page'), // Set the title of the page
      ),
      body: ListView.builder(
        itemCount: 3, // Adjust the number of sections as needed
        itemBuilder: (context, index) {
          return Column(
            children: <Widget>[
              // Course Title
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  'Course Name $index',
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              // Text Paragraph
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  'This is a paragraph describing the course $index. add more details about the course here.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
