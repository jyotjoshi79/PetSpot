import 'package:flutter/material.dart';
import 'package:petspot_app/theme_settings.dart';

// import 'screens/forget_password_page.dart';
// import 'package:petspot_app/petspottracker.dart';
// import 'AccountSettingsPage.dart';
// import 'home_page.dart';
// import 'package:petspot_app/petspottracker.dart';
// import 'package:petspot_app/screens/home_screen.dart';

  //  import 'screens/login_page.dart';
// import 'screens/signup_page.dart';
// import 'package:petspot_app/screens/pets_detail_screen.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:cloud_firestore';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: HomeScreen(),
    );
  }
}