import 'package:flutter/material.dart';
import 'home_page4.dart';

class Page3 extends StatelessWidget {
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
              '/Users/picsartaccademy/Desktop/flutter_application_3/lib/116eabdc241bff7db48ed75924d1a924.jpg', // Replace with your image path
              fit: BoxFit.cover,
            ),
          ),

          // Centered Content
          Center(
            child: Container(
              padding: EdgeInsets.all(16.0),
              color: Colors.white.withOpacity(0.7),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    _buildParagraph('This is called a function. Any code inside its curly brackets {} will be executed.'),
                    _buildParagraph('Note: Every C++ statement ends with a semicolon ;.'),
                    _buildParagraph('Note: The body of int main() could also have been written as:'),
                    _buildParagraph('int main () { cout << "Hello World! "; return 0; }'),
                    _buildParagraph('Line 5: cout (pronounced "see-out") is an object used together with the insertion operator (<<) to output/print text. In our example, it will output "Hello World!".'),
                    _buildParagraph('Line 6: return 0 ends the main function.'),
                    _buildParagraph('Line 7: Do not forget to add the closing curly bracket } to actually end the main function.'),
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
                    builder: (context) => Page4(), // Replace with the destination page
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
