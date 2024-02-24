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
//             borderRadius: BorderRadius.circular(12.0),
//           ),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.stretch,
//             children: [
//               Container(
//                 height: 200.0,
//                 child: Image.asset(
//                   'assets/cat2.jpeg',
//                   fit: BoxFit.contain,
//                 ),
//               ),
//               Padding(
//                 padding: EdgeInsets.all(10.0),
//                 child: Column(
//                   children: [
//                     // Display the list of pet details
//                     if (pets.isNotEmpty)
//                       ...pets.map(
//                         (pet) => Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Text(
//                               'Pet Name: ${pet.name}',
//                               style: TextStyle(fontSize: 20.0),
//                             ),
//                             Text('Breed: ${pet.breed}'),
//                             Text('Height: ${pet.height} cm'),
//                             Text('Weight: ${pet.weight} kg'),
//                             Text('Birth Date: ${pet.birthDate}'),
//                           ],
//                         ),
//                       ),
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
import 'package:flutter/material.dart';

class PetDetailsScreen extends StatelessWidget {
  final Map<String, dynamic> petDetails;

  const PetDetailsScreen({Key? key, required this.petDetails}) : super(key: key);

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
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Pet Name: ${petDetails['name']}',
                  style: TextStyle(fontSize: 20.0),
                ),
                Text('Breed: ${petDetails['breed']}'),
                Text('Height: ${petDetails['height']} cm'),
                Text('Weight: ${petDetails['weight']} kg'),
                Text('Birth Date: ${petDetails['birthDate']}'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

