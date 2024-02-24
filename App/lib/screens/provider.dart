import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider<ThemeNotifier>(
      create: (_) => ThemeNotifier(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Theme Demo',
      theme: Provider.of<ThemeNotifier>(context).getTheme(),
      home: ThemeSettingsPage(),
    );
  }
}

class ThemeNotifier with ChangeNotifier {
  ThemeData _themeData = ThemeData.light();

  ThemeData getTheme() => _themeData;

  void setTheme(ThemeData themeData) {
    _themeData = themeData;
    notifyListeners();
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
              Provider.of<ThemeNotifier>(context, listen: false).setTheme(ThemeData.light());
            },
            child: ListTile(
              title: const Text('Light Theme'),
              trailing: const Icon(Icons.brightness_high),
            ),
          ),
          InkWell(
            onTap: () {
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
