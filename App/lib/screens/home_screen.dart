import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:petspot_app/AccountSettingsPage.dart';
import 'package:petspot_app/add_pet.dart';
import 'package:petspot_app/screens/pets_detail_screen.dart';

class ThemeNotifier with ChangeNotifier {
  bool _isDarkMode = false;

  bool get isDarkMode => _isDarkMode;

  void toggleTheme() {
    _isDarkMode = !_isDarkMode;
    notifyListeners();
  }

  ThemeData getTheme() {
    return _isDarkMode ? ThemeData.dark() : ThemeData.light();
  }
}

void main() {
  runApp(
    ChangeNotifierProvider<ThemeNotifier>(
      create: (context) => ThemeNotifier(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeNotifier>(
      builder: (context, themeNotifier, _) => MaterialApp(
        title: 'PetSpot',
        theme: themeNotifier.getTheme(), // Apply the theme from ThemeNotifier
        home: HomeScreen(),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PetSpot'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const AccountSettingsPage()));
            },
            icon: const Icon(Icons.account_circle),
          ),
          Consumer<ThemeNotifier>(
            builder: (context, themeNotifier, _) => Switch(
              value: themeNotifier.isDarkMode,
              onChanged: (value) {
                themeNotifier.toggleTheme();
              },
            ),
          ),
        ],
      ),
      body: Stack(
        children: <Widget>[
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                const CircleAvatar(
                  radius: 100.0,
                  backgroundImage: AssetImage('assets/logo2.jpg'),
                ),
                SizedBox(height: 10),
                const Text(
                  'Welcome to PetSpot!',
                  style: TextStyle(fontSize: 30),
                ),
                SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {
                    //Navigator.push(context, MaterialPageRoute(builder: (context) =>  MapPage()));
                  },
                  child: Text(
                    'Track My Pet',
                    style: TextStyle(fontSize: 20),
                  ),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                  ),
                ),
                // Position the "Know the Pets" button below "Track My Pet"
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => PetDetailsScreen(petDetails: Map(),)));
                    },
                    child: Text(
                      'Know the Pets',
                      style: TextStyle(fontSize: 20),
                    ),
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 20.0,
            right: 20.0,
            child: FloatingActionButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) =>  AddPetPage(onPetAdded: (String ) { 'Its added'; },)));
              },
              child: Icon(Icons.add),
            ),
          ),
          // Remove the previously positioned "Know the Pets" button
        ],
      ),
    );
  }
}
