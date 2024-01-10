import 'package:flutter/material.dart';

class Page4 extends StatelessWidget {
  final TextEditingController _answer1Controller = TextEditingController();
  final TextEditingController _answer2Controller = TextEditingController();
  final TextEditingController _answer3Controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Stack(
        children: <Widget>[
          // Background Image covering the whole screen
          Positioned.fill(
            child: Image.asset(
              '/Users/picsartaccademy/Desktop/flutter_application_3/lib/116eabdc241bff7db48ed75924d1a924.jpg',
              fit: BoxFit.cover,
            ),
          ),
          // Centered Content
          Center(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.transparent,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      'Is C++ strongly typed or not?',
                      style: TextStyle(
                        color: const Color.fromARGB(255, 78, 169, 192),
                        fontSize: 16.0,
                      ),
                    ),
                    SizedBox(height: 12.0),
                    TextField(
                      controller: _answer1Controller,
                      decoration: InputDecoration(
                        labelText: 'Answer',
                        labelStyle: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                    SizedBox(height: 12.0),
                    Text(
                      'What is the starting point of code written in the C++ programming language?',
                      style: TextStyle(
                        color: Color.fromARGB(255, 78, 169, 192),
                        fontSize: 16.0,
                      ),
                    ),
                    SizedBox(height: 12.0),
                    TextField(
                      controller: _answer2Controller,
                      decoration: InputDecoration(
                        labelText: 'Answer',
                        labelStyle: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                    SizedBox(height: 20.0),
                    Text(
                      'Is C++ an object-oriented language or not?',
                      style: TextStyle(
                        color: Color.fromARGB(255, 78, 169, 192),
                        fontSize: 16.0,
                      ),
                    ),
                    SizedBox(height: 12.0),
                    TextField(
                      controller: _answer3Controller,
                      decoration: InputDecoration(
                        labelText: 'Answer',
                        labelStyle: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                    SizedBox(height: 20.0),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: ElevatedButton(
                        onPressed: () {
                          String answer1 = _answer1Controller.text.toLowerCase();
                          String answer2 = _answer2Controller.text.toLowerCase();
                          String answer3 = _answer3Controller.text.toLowerCase();

                          if ((answer1 == 'yes' || answer1 == 'Yes') &&
                              (answer2 == 'main function' || answer2 == 'main') &&
                              (answer3 == 'yes' || answer3 == 'Yes')) {
                            // Navigate to the next page
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => NextPage(),
                              ),
                            );
                          } else {
                            // Show a snackbar with a warning message
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text('Incorrect answers. Please try again.'),
                              ),
                            );
                          }
                        },
                        child: Text('Next'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class NextPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Next Page'),
      ),
      body: Center(
        child: Text('You have reached the next page!'),
      ),
    );
  }
}
