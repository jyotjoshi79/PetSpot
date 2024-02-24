import 'package:flutter/material.dart';
import 'login_page.dart';

class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign Up'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: 'Enter your username *',
              ),
              onChanged: (value) {
                // Add username validation if needed
              },
            ),
            TextField(
              decoration: InputDecoration(
                hintText: 'Set your password *',
              ),
              obscureText: true,
              onChanged: (value) {
                // Add password validation if needed
              },
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Add sign-up functionality here

                // After creating account, navigate back to login page
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage()),
                );
              },
              child: Text('Create Account'),
            ),
          ],
        ),
      ),
    );
  }
}
