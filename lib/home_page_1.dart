import 'package:flutter/material.dart';
import 'home_page_2.dart';
import 'login.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          // Background Image
          Positioned.fill(
            child: Image.asset(
              '/Users/picsartaccademy/Desktop/flutter_application_3/lib/116eabdc241bff7db48ed75924d1a924.jpg', // Replace with your image asset path
              fit: BoxFit.cover, // Cover the entire widget area
            ),
          ),
          
          // Content with Transparency
          Center(
            child: Container(
              padding: EdgeInsets.all(16.0),
              color: Colors.white.withOpacity(0.7), // Semi-transparent white color
              child: Column(
                mainAxisSize: MainAxisSize.min, // Fit content in the center
                children: <Widget>[
                  Text(
                    'C++ Tutorial',
                    style: TextStyle(
                      fontSize: 45,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'What is C++?',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  _buildParagraph('C++ is a cross-platform language that can be used to create high-performance applications.'),
                  _buildParagraph('C++ was developed by Bjarne Stroustrup, as an extension to the C language.'),
                  _buildParagraph('C++ gives programmers a high level of control over system resources and memory.'),
                  _buildParagraph('The language was updated 4 major times in 2011, 2014, 2017, and 2020 to C++11, C++14, C++17, C++20.'),
                  Text(
                    'Why Use C++',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  _buildParagraph('C++ is one of the world\'s most popular programming languages.'),
                  _buildParagraph('C++ can be found in today\'s operating systems, Graphical User Interfaces, and embedded systems.'),
                  _buildParagraph('C++ is an object-oriented programming language which gives a clear structure to programs and allows code to be reused, lowering development costs.'),
                  _buildParagraph('C++ is portable and can be used to develop applications that can be adapted to multiple platforms.'),
                  // _buildParagraph('C++ is fun and easy to learn!'),
                ],
              ),
            ),
          ),

          Positioned(
            bottom: 16.0, // Adjust the position as needed
            right: 16.0, // Adjust the position as needed
            child: ElevatedButton(
              onPressed: () {
                // Navigate to another page here
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => Page2(), // Replace with the destination page
                  ),
                );
              },
              child: Text('NEXT'),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildParagraph(String text) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(text),
    );
  }
}


