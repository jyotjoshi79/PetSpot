import 'package:flutter/material.dart';

class AccountDetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Account Details'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Add text fields for email and password
          // ...

          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              // Handle save button
              Navigator.pop(context);
            },
            child: const Text('Save'),
          ),
        ],
      ),
    );
  }
}
