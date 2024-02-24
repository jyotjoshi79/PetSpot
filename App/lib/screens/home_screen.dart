import 'package:flutter/material.dart';
import 'package:petspot_app/AccountSettingsPage.dart';
import 'package:petspot_app/add_pet.dart';
import 'package:petspot_app/petspottracker.dart';
import 'package:petspot_app/screens/pets_detail_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PetSpot'),
         actions: [IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const AccountSettingsPage()));
            },
            icon: const Icon(Icons.account_circle),
          ),],
      ),
      body: Stack(

        children: <Widget>[
          
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
               
          
           const CircleAvatar(
              radius: 100.0, // Set the radius for the circle
              backgroundImage: AssetImage('assets/logo2.jpg'), // Replace with your image asset
            ),
             SizedBox(height: 10),
            
                const Text(
                  'Welcome to PetSpot!',
                  style: TextStyle(fontSize: 24), // Increase font size
                ),
                 SizedBox(height: 10),
                // Add some spacing
                

                ElevatedButton(
                  onPressed: () {
                    //Navigator.push(context, MaterialPageRoute(builder: (context) =>  MapPage()));
                  },
                  child: Text(
                    'Track My Pet',
                    style: TextStyle(fontSize: 20), // Increase button size
                  ),
                  style: ElevatedButton.styleFrom(
                    padding:
                        EdgeInsets.symmetric(horizontal: 40, vertical: 20), // Increase padding
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
          Positioned(
            bottom: 20.0,
            left: 20.0,
            child: ElevatedButton(
              onPressed: () {
                               Navigator.push(context, MaterialPageRoute(builder: (context) => PetDetailsScreen(petDetails:Map(),)));
              },
              child: Padding(
                padding: const EdgeInsets.all(16.0), // Increase padding
                child: Text(
                  'Know the Pets',
                  style: TextStyle(fontSize: 18), // Increase font size
                ),
              ),
              
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10), // Reduce border radius
                ),
              ),
             
            ),
          ),
        ],
      ),
    );
  }
}
