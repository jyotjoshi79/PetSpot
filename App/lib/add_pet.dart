import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class AddPetPage extends StatefulWidget {
  final Function(Map<String, dynamic>, String) onPetAdded;

  const AddPetPage({Key? key, required this.onPetAdded}) : super(key: key);

  @override
  _AddPetPageState createState() => _AddPetPageState();
}

class _AddPetPageState extends State<AddPetPage> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _breedController = TextEditingController();
  final TextEditingController _heightController = TextEditingController();
  final TextEditingController _weightController = TextEditingController();
  final TextEditingController _birthDateController = TextEditingController();

  // Reference to Firestore
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Pet'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: _nameController,
              decoration: InputDecoration(labelText: 'Pet Name'),
            ),
            TextField(
              controller: _breedController,
              decoration: InputDecoration(labelText: 'Breed'),
            ),
            TextField(
              controller: _heightController,
              decoration: InputDecoration(labelText: 'Height (cm)'),
              keyboardType: TextInputType.number,
            ),
            TextField(
              controller: _weightController,
              decoration: InputDecoration(labelText: 'Weight (kg)'),
              keyboardType: TextInputType.number,
            ),
            TextField(
              controller: _birthDateController,
              decoration: InputDecoration(labelText: 'Birth Date'),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () async {
                // Convert height and weight to doubles
                double height = double.tryParse(_heightController.text) ?? 0.0;
                double weight = double.tryParse(_weightController.text) ?? 0.0;

                // Create a new pet map
                final newPet = {
                  'name': _nameController.text,
                  'breed': _breedController.text,
                  'height': height,
                  'weight': weight,
                  'birthDate': _birthDateController.text,
                };

                // Add the new pet to Firestore
                try {
                  // Add the new pet to Firestore and get the generated ID
                  DocumentReference docRef = await _firestore.collection('pets').add(newPet);
                  String petId = docRef.id;

                  // Notify the parent widget about the addition of the pet along with the pet ID
                  widget.onPetAdded(newPet, petId);
                  Navigator.pop(context);
                } catch (e) {
                  // Handle errors if any
                  print('Error adding pet: $e');
                  // You can display an error message to the user here
                }
              },
              child: Text('Add Pet'),
            ),
          ],
        ),
      ),
    );
  }
}
