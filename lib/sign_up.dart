// // import 'package:flutter/material.dart';
// // import 'home_page_1.dart';

// // class SignUpPage extends StatefulWidget {
// //   @override
// //   _SignUpPageState createState() => _SignUpPageState();
// // }

// // class _SignUpPageState extends State<SignUpPage> {
// //   final TextEditingController firstNameController = TextEditingController();
// //   final TextEditingController emailController = TextEditingController();
// //   final TextEditingController passwordController = TextEditingController();
// //   final TextEditingController confirmPasswordController = TextEditingController();

// //   String emailErrorMessage = '';
// //   String passwordErrorMessage = '';

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: null,
// //       body: Stack(
// //         fit: StackFit.expand,
// //         children: [
// //           Image.asset(
// //             '/Users/picsartaccademy/Desktop/flutter_application_3/lib/cf238f10184c62d6e07d40425228466a.jpg',
// //             fit: BoxFit.cover,
// //             width: double.infinity,
// //             height: double.infinity,
// //           ),
// //           Padding(
// //             padding: const EdgeInsets.all(16.0),
// //             child: Column(
// //               mainAxisAlignment: MainAxisAlignment.center,
// //               crossAxisAlignment: CrossAxisAlignment.stretch,
// //               children: [
// //                 Column(
// //                   crossAxisAlignment: CrossAxisAlignment.stretch,
// //                   children: [
// //                     TextField(
// //                       controller: firstNameController,
// //                       decoration: InputDecoration(
// //                         labelText: 'First Name',
// //                         labelStyle: TextStyle(
// //                           color: Colors.black, // Set your desired text color
// //                         ),
// //                       ),
// //                     ),
// //                     SizedBox(height: 12.0),
// //                     TextField(
// //                       controller: emailController,
// //                       decoration: InputDecoration(
// //                         labelText: 'E-mail ID',
// //                         labelStyle: TextStyle(
// //                           color: Colors.black, // Set your desired text color
// //                         ),
// //                         errorText: emailErrorMessage,
// //                       ),
// //                     ),
// //                     SizedBox(height: 12.0),
// //                     TextField(
// //                       controller: passwordController,
// //                       obscureText: true,
// //                       decoration: InputDecoration(
// //                         labelText: 'Password',
// //                         labelStyle: TextStyle(
// //                           color: Colors.black, // Set your desired text color
// //                         ),
// //                       ),
// //                     ),
// //                     SizedBox(height: 12.0),
// //                     TextField(
// //                       controller: confirmPasswordController,
// //                       obscureText: true,
// //                       decoration: InputDecoration(
// //                         labelText: 'Confirm Password',
// //                         labelStyle: TextStyle(
// //                           color: Colors.black, // Set your desired text color
// //                         ),
// //                         errorText: passwordErrorMessage,
// //                       ),
// //                     ),
// //                     SizedBox(height: 20.0),
// //                   ],
// //                 ),
// //                 Row(
// //                   children: [
// //                     Expanded(
// //                       child: ElevatedButton(
// //                         onPressed: () {
// //                           // Validate email format
// //                           if (!_isValidEmail(emailController.text)) {
// //                             setState(() {
// //                               emailErrorMessage = 'Invalid email format';
// //                             });
// //                             return;
// //                           }

// //                           // Validate password match
// //                           if (passwordController.text != confirmPasswordController.text) {
// //                             setState(() {
// //                               passwordErrorMessage = 'Passwords do not match';
// //                             });
// //                             return;
// //                           }

// //                           // Add your sign-up logic here

// //                           // Navigate to the login page
// //                           Navigator.pushReplacement(
// //                             context,
// //                             MaterialPageRoute(builder: (context) => HomePage()),
// //                           );
// //                         },
// //                         style: ElevatedButton.styleFrom(
// //                           primary: const Color.fromARGB(255, 168, 205, 235),
// //                         ),
// //                         child: Row(
// //                           mainAxisAlignment: MainAxisAlignment.center,
// //                           children: [
// //                             Icon(
// //                               Icons.person_add,
// //                               color: Colors.black, // Set light blue color
// //                             ),
// //                             SizedBox(width: 8.0),
// //                             Text(
// //                               'Sign Up',
// //                               style: TextStyle(
// //                                 color: Colors.black, // Set your desired text color
// //                               ),
// //                             ),
// //                           ],
// //                         ),
// //                       ),
// //                     ),
// //                     SizedBox(width: 16.0),
// //                     Expanded(
// //                       child: ElevatedButton(
// //                         onPressed: () {
// //                           // Pop the current route off the navigation stack
// //                           Navigator.pop(context);
// //                         },
// //                         style: ElevatedButton.styleFrom(
// //                           primary: const Color.fromARGB(255, 168, 205, 235),
// //                         ),
// //                         child: Row(
// //                           mainAxisAlignment: MainAxisAlignment.center,
// //                           children: [
// //                             Icon(
// //                               Icons.cancel,
// //                               color: Colors.black, // Set light blue color
// //                             ),
// //                             SizedBox(width: 8.0),
// //                             Text(
// //                               'Cancel',
// //                               style: TextStyle(
// //                                 color: Colors.black, // Set your desired text color
// //                               ),
// //                             ),
// //                           ],
// //                         ),
// //                       ),
// //                     ),
// //                   ],
// //                 ),
// //               ],
// //             ),
// //           ),
// //         ],
// //       ),
// //     );
// //   }

// //   bool _isValidEmail(String email) {
// //     // Add your email format validation logic here
// //     // For simplicity, a basic check is performed here
// //     return email.contains('@gmail.com') ||
// //         email.contains('@mail.ru') ||
// //         email.contains('@yahoo.com');
// //   }
// // }

// // class LoginPage extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Text('Login'),
// //       ),
// //       body: Center(
// //         child: Text('This is the login page.'),
// //       ),
// //     );
// //   }
// // }

// import 'dart:convert';
// import 'dart:io';

// import 'package:flutter/material.dart';
// import 'home_page_1.dart';

// class SignUpPage extends StatefulWidget {
//   @override
//   _SignUpPageState createState() => _SignUpPageState();
// }

// class _SignUpPageState extends State<SignUpPage> {
//   final TextEditingController firstNameController = TextEditingController();
//   final TextEditingController emailController = TextEditingController();
//   final TextEditingController passwordController = TextEditingController();
//   final TextEditingController confirmPasswordController = TextEditingController();

//   String emailErrorMessage = '';
//   String passwordErrorMessage = '';

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: null,
//       body: Stack(
//         fit: StackFit.expand,
//         children: [
//           Image.asset(
//             '/Users/picsartaccademy/Desktop/flutter_application_3/lib/cf238f10184c62d6e07d40425228466a.jpg',
//             fit: BoxFit.cover,
//             width: double.infinity,
//             height: double.infinity,
//           ),
//           Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               crossAxisAlignment: CrossAxisAlignment.stretch,
//               children: [
//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.stretch,
//                   children: [
//                     TextField(
//                       controller: firstNameController,
//                       decoration: InputDecoration(
//                         labelText: 'First Name',
//                         labelStyle: TextStyle(
//                           color: Colors.black,
//                         ),
//                       ),
//                     ),
//                     SizedBox(height: 12.0),
//                     TextField(
//                       controller: emailController,
//                       decoration: InputDecoration(
//                         labelText: 'E-mail ID',
//                         labelStyle: TextStyle(
//                           color: Colors.black,
//                         ),
//                         errorText: emailErrorMessage,
//                       ),
//                     ),
//                     SizedBox(height: 12.0),
//                     TextField(
//                       controller: passwordController,
//                       obscureText: true,
//                       decoration: InputDecoration(
//                         labelText: 'Password',
//                         labelStyle: TextStyle(
//                           color: Colors.black,
//                         ),
//                       ),
//                     ),
//                     SizedBox(height: 12.0),
//                     TextField(
//                       controller: confirmPasswordController,
//                       obscureText: true,
//                       decoration: InputDecoration(
//                         labelText: 'Confirm Password',
//                         labelStyle: TextStyle(
//                           color: Colors.black,
//                         ),
//                         errorText: passwordErrorMessage,
//                       ),
//                     ),
//                     SizedBox(height: 20.0),
//                   ],
//                 ),
//                 Row(
//                   children: [
//                     Expanded(
//                       child: ElevatedButton(
//                         onPressed: () {
//                           if (!_isValidEmail(emailController.text)) {
//                             setState(() {
//                               emailErrorMessage = 'Invalid email format';
//                             });
//                             return;
//                           }

//                           if (passwordController.text !=
//                               confirmPasswordController.text) {
//                             setState(() {
//                               passwordErrorMessage = 'Passwords do not match';
//                             });
//                             return;
//                           }

//                           _saveUserData();

//                           Navigator.pushReplacement(
//                             context,
//                             MaterialPageRoute(builder: (context) => HomePage()),
//                           );
//                         },
//                         style: ElevatedButton.styleFrom(
//                           primary: const Color.fromARGB(255, 168, 205, 235),
//                         ),
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             Icon(
//                               Icons.person_add,
//                               color: Colors.black,
//                             ),
//                             SizedBox(width: 8.0),
//                             Text(
//                               'Sign Up',
//                               style: TextStyle(
//                                 color: Colors.black,
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                     SizedBox(width: 16.0),
//                     Expanded(
//                       child: ElevatedButton(
//                         onPressed: () {
//                           Navigator.pop(context);
//                         },
//                         style: ElevatedButton.styleFrom(
//                           primary: const Color.fromARGB(255, 168, 205, 235),
//                         ),
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             Icon(
//                               Icons.cancel,
//                               color: Colors.black,
//                             ),
//                             SizedBox(width: 8.0),
//                             Text(
//                               'Cancel',
//                               style: TextStyle(
//                                 color: Colors.black,
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   bool _isValidEmail(String email) {
//     return email.contains('@gmail.com') ||
//         email.contains('@mail.ru') ||
//         email.contains('@yahoo.com');
//   }

//   // void _saveUserData() async {
//   //   final Map<String, dynamic> userData = {
//   //     'firstName': firstNameController.text,
//   //     'email': emailController.text,
//   //     'password': passwordController.text,
//   //     // Add more fields as needed
//   //   };

//   //   final File file = File('/Users/picsartaccademy/Desktop/flutter_application_3/lib/user_data.json');
//   //   await file.writeAsString(jsonEncode(userData));
//   // }

//   void _saveUserData() async {
//     final Map<String, dynamic> newUser = {
//       'firstName': firstNameController.text,
//       'email': emailController.text,
//       'password': passwordController.text,
//       // Add more fields as needed
//     };

//     final File file = File('/Users/picsartaccademy/Desktop/flutter_application_3/lib/user_data.json');

//     // Read existing data from the file
//     String fileContents = await file.readAsString();
//     List<dynamic> existingUsers = jsonDecode(fileContents);

//     // Check if a user with the same data already exists
//     bool userExists = existingUsers.any((user) =>
//         user['firstName'] == newUser['firstName'] ||
//         user['email'] == newUser['email'] ||
//         user['password'] == newUser['password']);

//     if (userExists) {
//       // Display a message that a user with the same data already exists
//       print('A user with the same data already exists.');
//     } else {
//       // Add the new user to the existing list and write it back to the file
//       existingUsers.add(newUser);
//       await file.writeAsString(jsonEncode(existingUsers));
//       print('User data saved successfully.');
//     }
//   }

// }


import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'home_page_1.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  String emailErrorMessage = '';
  String passwordErrorMessage = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            '/Users/picsartaccademy/Desktop/flutter_application_3/lib/cf238f10184c62d6e07d40425228466a.jpg',
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    TextField(
                      controller: firstNameController,
                      decoration: InputDecoration(
                        labelText: 'First Name',
                        labelStyle: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                    SizedBox(height: 12.0),
                    TextField(
                      controller: emailController,
                      decoration: InputDecoration(
                        labelText: 'E-mail ID',
                        labelStyle: TextStyle(
                          color: Colors.black,
                        ),
                        errorText: emailErrorMessage,
                      ),
                    ),
                    SizedBox(height: 12.0),
                    TextField(
                      controller: passwordController,
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: 'Password',
                        labelStyle: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                    SizedBox(height: 12.0),
                    TextField(
                      controller: confirmPasswordController,
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: 'Confirm Password',
                        labelStyle: TextStyle(
                          color: Colors.black,
                        ),
                        errorText: passwordErrorMessage,
                      ),
                    ),
                    SizedBox(height: 20.0),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          if (!_isValidEmail(emailController.text)) {
                            setState(() {
                              emailErrorMessage = 'Invalid email format';
                              passwordErrorMessage = '';
                            });
                            return;
                          }

                          if (passwordController.text !=
                              confirmPasswordController.text) {
                            setState(() {
                              passwordErrorMessage = 'Passwords do not match';
                              emailErrorMessage = '';
                            });
                            return;
                          }

                          _saveUserData();
                        },
                        style: ElevatedButton.styleFrom(
                          primary: const Color.fromARGB(255, 168, 205, 235),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.person_add,
                              color: Colors.black,
                            ),
                            SizedBox(width: 8.0),
                            Text(
                              'Sign Up',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 16.0),
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        style: ElevatedButton.styleFrom(
                          primary: const Color.fromARGB(255, 168, 205, 235),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.cancel,
                              color: Colors.black,
                            ),
                            SizedBox(width: 8.0),
                            Text(
                              'Cancel',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  bool _isValidEmail(String email) {
    return email.contains('@gmail.com') ||
        email.contains('@mail.ru') ||
        email.contains('@yahoo.com');
  }

  void _saveUserData() async {
    final Map<String, dynamic> newUser = {
      'firstName': firstNameController.text,
      'email': emailController.text,
      'password': passwordController.text,
    };

    final File file = File(
        '/Users/picsartaccademy/Desktop/flutter_application_3/lib/user_data.json');

    // Read existing data from the file
    String fileContents = await file.readAsString();
    List<dynamic> existingUsers = jsonDecode(fileContents);

    // Check if a user with the same data already exists
    bool userExists = existingUsers.any((user) =>
        user['firstName'] == newUser['firstName'] ||
        user['email'] == newUser['email'] ||
        user['password'] == newUser['password']);

    if (userExists) {
      // Display a message that a user with the same data already exists
      print('A user with the same data already exists.');
    } else {
      // Add the new user to the existing list and write it back to the file
      existingUsers.add(newUser);
      await file.writeAsString(jsonEncode(existingUsers));
      print('User data saved successfully.');

      // You can display a message here using a SnackBar or another method
      print('Sign up successful!');
    }
  }
}
