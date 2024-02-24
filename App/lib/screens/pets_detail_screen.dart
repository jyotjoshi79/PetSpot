// import 'package:flutter/material.dart';
// import 'package:petspot_app/add_pet.dart';

// class PetDetailsScreen extends StatefulWidget {
//   @override
//   _PetDetailsScreenState createState() => _PetDetailsScreenState();
// }
// class Pet {
//   final String name;
//   final String breed;
//   final double height;
//   final double weight;
//   final String birthDate;

//   Pet({
//     required this.name,
//     this.breed = '',
//     this.height = 0.0,
//     this.weight = 0.0,
//     this.birthDate = '',
//   });
// }

// class _PetDetailsScreenState extends State<PetDetailsScreen> {
//   List<Pet> pets = [];
  
//    // Store pet names
  

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Pet Details'),
//       ),
//       body: Center(
//         child: Card(
          
      
//           margin: EdgeInsets.all(16.0),
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(12.0), // Make the card square
//           ),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.stretch,
//             children: [
//               Container(
//                 height: 200.0, // Set the height for the image space
//                 // Add an image widget here
//                 child: Image.asset(
//                   'assets/cat2.jpeg', // Replace with your actual image URL
//                   fit: BoxFit.contain,
//                 ),
//               ),
//               Padding(
//                 padding: EdgeInsets.all(10.0),
//                 child: Column(
//                   children: [
//                     Text(
//                       'Pet Name: $pets',
//                       style: TextStyle(fontSize: 20.0),
//                     ),
//                      ElevatedButton(
//             onPressed: () {
//               // Navigate to AddPetPage and handle the callback
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                   builder: (context) => AddPetPage(
//                     onPetAdded: (petName) {
//                       // Update the UI with the added pet
//                       setState(() {
//                         pets.add(pets as Pet );
//                       });
//                     },
//                   ),
//                 ),
//               );
//             },
//             child: const Text('Add Pet'),
//                 ),// Add more pet details here
//                 //     ElevatedButton(
//                 // onPressed: () {
//                 //   // Navigate to AddPetPage and handle the callback
//                 //   Navigator.push(
//                 //     context,
//                 //     MaterialPageRoute(
//                 //       builder: (context) => AddPetPage(
//                 //         onPetAdded: (pet) {
//                 //           // Update the UI with the added pet
//                 //           setState(() {
//                 //             pets.add(pets as Pet);
//                 //           });
//                 //         },
//                 //       ),
//                 //     ),
//                 //   );
//                 // },
//                 // child: const Text('Add Pet'),),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );

//   }
// }

//       //     ElevatedButton(
//       //       onPressed: () {
//       //         // Navigate to AddPetPage and handle the callback
//       //         Navigator.push(
//       //           context,
//       //           MaterialPageRoute(
//       //             builder: (context) => AddPetPage(
//       //               onPetAdded: (petName) {
//       //                 // Update the UI with the added pet
//       //                 setState(() {
//       //                   petNames.add(petName);
//       //                 });
//       //               },
//       //             ),
//       //           ),
//       //         );
//       //       },
//       //       child: const Text('Add Pet'),
//       //     ),
//       //   ),
//       // ),
    
/*import 'package:flutter/material.dart';
import 'package:petspot_app/add_pet.dart';

class PetDetailsScreen extends StatefulWidget {
  @override
  _PetDetailsScreenState createState() => _PetDetailsScreenState();
}

class Pet {
  final String name;
  final String breed;
  final double height;
  final double weight;
  final String birthDate;

  Pet({
    required this.name,
    this.breed = '',
    this.height = 0.0,
    this.weight = 0.0,
    this.birthDate = '',
  });
}

class _PetDetailsScreenState extends State<PetDetailsScreen> {
  List<Pet> pets = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pet Details'),
      ),
      body: Center(
        child: Card(
          margin: EdgeInsets.all(16.0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                height: 200.0,
                child: Image.asset(
                  'assets/cat2.jpeg',
                  fit: BoxFit.contain,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    // Display the list of pet names
                    if (pets.isNotEmpty)
                      ...pets.map(
                        (pet) => Text(
                          'Pet Name: ${pet.name}',
                          style: TextStyle(fontSize: 20.0),
                        ),
                      ),
                    ElevatedButton(
                      onPressed: () {
                        // Navigate to AddPetPage and handle the callback
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AddPetPage(
                              onPetAdded: (petData) {
                                // Update the UI with the added pet
                                setState(() {
                                  pets.add(Pet(
                                    name: petData['name'],
                                    breed: petData['breed'],
                                    height: petData['height'],
                                    weight: petData['weight'],
                                    birthDate: petData['birthDate'],
                                  ));
                                });
                              },
                            ),
                          ),
                        );
                      },
                      child: const Text('Add Pet'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}*/

import 'package:flutter/material.dart';
import 'package:petspot_app/add_pet.dart';

class PetDetailsScreen extends StatefulWidget {
  @override
  _PetDetailsScreenState createState() => _PetDetailsScreenState();
}

class Pet {
  final String name;
  final String breed;
  final double height;
  final double weight;
  final String birthDate;

  Pet({
    required this.name,
    this.breed = '',
    this.height = 0.0,
    this.weight = 0.0,
    this.birthDate = '',
  });
}

class _PetDetailsScreenState extends State<PetDetailsScreen> {
  List<Pet> pets = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pet Details'),
      ),
      body: Center(
        child: Card(
          margin: EdgeInsets.all(16.0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                height: 200.0,
                child: Image.asset(
                  'assets/cat2.jpeg',
                  fit: BoxFit.contain,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    // Display the list of pet details
                    if (pets.isNotEmpty)
                      ...pets.map(
                        (pet) => Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Pet Name: ${pet.name}',
                              style: TextStyle(fontSize: 20.0),
                            ),
                            Text('Breed: ${pet.breed}'),
                            Text('Height: ${pet.height} cm'),
                            Text('Weight: ${pet.weight} kg'),
                            Text('Birth Date: ${pet.birthDate}'),
                          ],
                        ),
                      ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
