/*import 'package:flutter/material.dart';
import 'package:petspot_app/screens/pets_detail_screen.dart';

class AddPetPage extends StatefulWidget {
  // final Function(String) onPetAdded;
  final Function(Map<String, dynamic>) onPetAdded;
  const AddPetPage({Key? key, required this.onPetAdded}) : super(key: key);

  @override
  _AddPetPageState createState() => _AddPetPageState();
}

class _AddPetPageState extends State<AddPetPage> {
  final _petNameController = TextEditingController();
  final _petBreedController = TextEditingController();
  final _petHeightController = TextEditingController();
  final _petWeightController = TextEditingController();
  final _petBirthDateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        title: const Text('Add Pet'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Pet Name'),
              TextFormField(
                controller: _petNameController,
                decoration: const InputDecoration(hintText: 'Bella'),
              ),
              const SizedBox(height: 20),
              const Text('Pet Breed'),
              TextFormField(
                controller: _petBreedController,
                decoration: const InputDecoration(hintText: 'Shih-Tzu'),
              ),
              const SizedBox(height: 20),
              const Text('Pet Height (cm)'),
              TextFormField(
                controller: _petHeightController,
                decoration: const InputDecoration(hintText: 'in cm'),
                keyboardType: TextInputType.number,
              ),
              const SizedBox(height: 20),
              const Text('Pet Weight (kg)'),
              TextFormField(
                controller: _petWeightController,
                decoration: const InputDecoration(hintText: 'in kg'),
                keyboardType: TextInputType.number,
              ),
              const SizedBox(height: 20),
              const Text('Pet Birth Date'),
              TextFormField(
                controller: _petBirthDateController,
                decoration: const InputDecoration(hintText: '01-01-2023'),
                keyboardType: TextInputType.datetime,
              ),
              const SizedBox(height: 20),
             
//               ElevatedButton(
//   onPressed: () {
//     Navigator.push(
//       context,
//       MaterialPageRoute(
//         builder: (context) => PetDetailsScreen(),
//       ),
//     );
//   },
//   child: const Text('Add Pet'),
// ),
// ElevatedButton(
//         onPressed: () {
//           // Add the pet and notify the callback
//           widget.onPetAdded(_petNameController.text);
//           Navigator.pop(context);
//         },
//         child: const Text('Add Pet'),
//       ),
      // ElevatedButton(
      //   onPressed: () {
      //     // Add the pet and notify the callback
      //     final pet = Pet(name: _petNameController.text);
      //     widget.onPetAdded(pet as String);
      //     Navigator.pop(context);
      //   },
      //   child: const Text('Add Pet'),)
        ElevatedButton(
                onPressed: () {
                  // Gather pet information
                  Map<String, dynamic> petData = {
                    'name': _petNameController.text,
                    'breed': _petBreedController.text,
                    'height': double.tryParse(_petHeightController.text) ?? 0.0,
                    'weight': double.tryParse(_petWeightController.text) ?? 0.0,
                    'birthDate': _petBirthDateController.text,
                  };

                  // Pass the pet data to the callback
                  widget.onPetAdded(petData);

                  // Navigate back to the previous screen
                  Navigator.pop(context);
                },
                child: const Text('Add Pet'),
              ),
         ],

          ),
        ),
      ),
      

      
    );
  }
}*/

import 'package:flutter/material.dart';

class AddPetPage extends StatefulWidget {
  final Function(Map<String, dynamic>) onPetAdded;

  const AddPetPage({Key? key, required this.onPetAdded}) : super(key: key);

  @override
  _AddPetPageState createState() => _AddPetPageState();
}

class _AddPetPageState extends State<AddPetPage> {
  final _petNameController = TextEditingController();
  final _petBreedController = TextEditingController();
  final _petHeightController = TextEditingController();
  final _petWeightController = TextEditingController();
  final _petBirthDateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Pet'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Pet Name'),
              TextFormField(
                controller: _petNameController,
                decoration: const InputDecoration(hintText: 'Bella'),
              ),
              const SizedBox(height: 20),
              const Text('Pet Breed'),
              TextFormField(
                controller: _petBreedController,
                decoration: const InputDecoration(hintText: 'Shih-Tzu'),
              ),
              const SizedBox(height: 20),
              const Text('Pet Height (cm)'),
              TextFormField(
                controller: _petHeightController,
                decoration: const InputDecoration(hintText: 'in cm'),
                keyboardType: TextInputType.number,
              ),
              const SizedBox(height: 20),
              const Text('Pet Weight (kg)'),
              TextFormField(
                controller: _petWeightController,
                decoration: const InputDecoration(hintText: 'in kg'),
                keyboardType: TextInputType.number,
              ),
              const SizedBox(height: 20),
              const Text('Pet Birth Date'),
              TextFormField(
                controller: _petBirthDateController,
                decoration: const InputDecoration(hintText: '01-01-2023'),
                keyboardType: TextInputType.datetime,
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                 // CollectionReference collRef = FirebaseFirestore.instance.collection('pet');
                  // Gather pet information
                  Map<String, dynamic> petData = {
                    'name': _petNameController.text,
                    'breed': _petBreedController.text,
                    'height': double.tryParse(_petHeightController.text) ?? 0.0,
                    'weight': double.tryParse(_petWeightController.text) ?? 0.0,
                    'birthDate': _petBirthDateController.text,
                  };

                  // Pass the pet data to the callback
                  widget.onPetAdded(petData);

                  // Navigate back to the previous screen
                  Navigator.pop(context);
                },
                child: const Text('Add Pet'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
