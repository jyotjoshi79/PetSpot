import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// Define a ChangeNotifier for managing the theme
class ThemeNotifier with ChangeNotifier {
  ThemeData _themeData = ThemeData.light(); // Default to light theme

  ThemeData getTheme() => _themeData;

  void setTheme(ThemeData themeData) {
    _themeData = themeData;
    notifyListeners(); // Notify listeners of the theme change
  }
}

void main() {
  runApp(
    ChangeNotifierProvider<ThemeNotifier>(
      create: (_) => ThemeNotifier(), // Create a ThemeNotifier instance
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Theme Demo',
      theme: Provider.of<ThemeNotifier>(context).getTheme(), // Get the current theme from the provider
      home: ThemeSettingsPage(),
    );
  }
}

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
              // Set light theme and notify listeners
              Provider.of<ThemeNotifier>(context, listen: false).setTheme(ThemeData.light());
            },
            child: ListTile(
              title: const Text('Light Theme'),
              trailing: const Icon(Icons.brightness_high),
            ),
          ),
          InkWell(
            onTap: () {
              // Set dark theme and notify listeners
              Provider.of<ThemeNotifier>(context, listen: false).setTheme(ThemeData.dark());
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
