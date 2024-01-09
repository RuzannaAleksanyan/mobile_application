import 'package:flutter/material.dart';
import 'home_page_3.dart';

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true, // Allows the body to be drawn behind the AppBar
      appBar: AppBar(
        backgroundColor: Colors.transparent, // Makes the AppBar transparent
        elevation: 0, // Removes shadow
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white), // Change color if needed
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Stack(
        children: <Widget>[
          // Background Image covering the whole screen
          Positioned.fill(
            child: Image.asset(
              '/Users/picsartaccademy/Desktop/flutter_application_3/lib/116eabdc241bff7db48ed75924d1a924.jpg', // Change to your image path
              fit: BoxFit.cover,
            ),
          ),

          Center(
            child: Container(
              padding: EdgeInsets.all(16.0),
              color: Colors.white.withOpacity(0.7),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      'C++ Syntax',
                      style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    _buildParagraph('Let\'s break up the following code to understand it better:'),
                    Text(
                      'Example',
                      style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    _buildCodeSnippet(),
                    Text(
                      'Example explained',
                      style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    _buildParagraph('Line 1: #include <iostream> is a header file library that lets us work with input and output objects, such as cout (used in line 5). Header files add functionality to C++ programs.'),
                    _buildParagraph('Line 2: using namespace std means that we can use names for objects and variables from the standard library.'),
                    _buildParagraph('Line 3: A blank line. C++ ignores white space. But we use it to make the code more readable.'),
                    _buildParagraph('Line 4: Another thing that always appear in a C++ program, is int main().'),
                  ],
                ),
              ),
            ),
          ),

          // Next Button
          Positioned(
            bottom: 16.0, // Adjust the position as needed
            right: 16.0, // Adjust the position as needed
            child: ElevatedButton(
              onPressed: () {
                // Navigate to another page here
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => Page3(), // Replace with the destination page
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

  Widget _buildCodeSnippet() {
    return Container(
      padding: EdgeInsets.all(8.0),
      margin: EdgeInsets.symmetric(vertical: 8.0),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(4.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 3.0,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: RichText(
        text: TextSpan(
          style: TextStyle(
            fontFamily: 'Courier',
            fontSize: 16.0,
          ),
          children: <TextSpan>[
            TextSpan(
              text: '#include <iostream>\n',
              style: TextStyle(color: Colors.blue),
            ),
            TextSpan(
              text: 'using namespace std;\n',
              style: TextStyle(color: Colors.black),
            ),
            TextSpan(
              text: 'int main() {\n',
              style: TextStyle(color: Colors.black),
            ),
            TextSpan(
              text: '    cout << "Hello World!";\n',
              style: TextStyle(color: Colors.green),
            ),
            TextSpan(
              text: '    return 0;\n',
              style: TextStyle(color: Colors.black),
            ),
            TextSpan(
              text: '}\n',
              style: TextStyle(color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}
