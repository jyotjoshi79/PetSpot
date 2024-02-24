import 'package:flutter/material.dart';

class ThemeSettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Theme Settings'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: () {
              // Handle light theme selection
              // You can use a theme provider to set the theme globally
              // ...
            },
            child: ListTile(
              title: const Text('Light Theme'),
              trailing: const Icon(Icons.brightness_high),
            ),
          ),
          InkWell(
            onTap: () {
              // Handle dark theme selection
              // You can use a theme provider to set the theme globally
              // ...
            },
            child: ListTile(
              title: const Text('Dark Theme'),
              trailing: const Icon(Icons.brightness_low),
            ),
          ),
        ],
      ),
    );
  }
}
