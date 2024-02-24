import 'package:flutter/material.dart';
// import 'forget_password_page.dart';
// import 'signup_page.dart';
import 'home_screen.dart'; // Import the HomeScreen

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String username = ''; // Variable to store the username
    String password = ''; // Variable to store the password

    return Scaffold(
      backgroundColor: Colors.transparent, // Set the background color to transparent
      body: Stack(
        children: [
          // Background image
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/WhatsApp Image 2024-02-24 at 10.05.56.jpeg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Translucent layer
          Container(
            color: Colors.black.withOpacity(0.7), // Translucent black color
          ),
          // Login content
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Transparent container for username field
                Container(
                  color: Colors.transparent,
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Username *',
                      fillColor: Colors.white,
                      filled: true,
                    ),
                    onChanged: (value) {
                      username = value; // Update the username variable
                    },
                  ),
                ),
                SizedBox(height: 20),
                // Transparent container for password field
                Container(
                  color: Colors.transparent,
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Password *',
                      fillColor: Colors.white,
                      filled: true,
                    ),
                    obscureText: true,
                    onChanged: (value) {
                      password = value; // Update the password variable
                    },
                  ),
                ),
                SizedBox(height: 20),
                // Transparent container for login button
                Container(
                  color: Colors.transparent,
                  child: ElevatedButton(
                    onPressed: () {
                      // Check if the username and password are correct
                      if (username == 'admin' && password == '1234') {
                        // Navigate to the HomeScreen if credentials are correct
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => HomeScreen()),
                        );
                      } else {
                        // Show an error message if credentials are incorrect
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: Text('Error'),
                              content: Text('Invalid username or password.'),
                              actions: <Widget>[
                                TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pop(); // Close the dialog
                                  },
                                  child: Text('OK'),
                                ),
                              ],
                            );
                          },
                        );
                      }
                    },
                    child: Text('Login'),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
