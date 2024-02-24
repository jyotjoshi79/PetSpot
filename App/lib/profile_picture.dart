/*import 'package:flutter/material.dart';

class ProfilePicturePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile Picture'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Add image picker or camera capture widget here
          // Add necessary code for selecting or capturing an image
          // ...

          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              // Handle save button
              Navigator.pop(context);
            },
            child: const Text('Save'),
          ),
        ],
      ),
    );
  }
}*/

/*import 'package:flutter/material.dart';

class ProfilePicturePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile Picture'),
        actions: [
          IconButton(
            onPressed: () {
              _showUpdateDialog(context);
            },
            icon: const Icon(Icons.edit),
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 80,
            backgroundImage: AssetImage('path_to_profile_picture'), 
             // Replace with actual path or placeholder
          
          ),
          const SizedBox(height: 20),
          Align(
            
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.all(2.0),
              child: ElevatedButton(
                onPressed: () {
                  _showUpdateDialog(context);
                },
                child: const Text('Update Profile Picture'),
              ),
            ),
          ),
          // Check if profile picture exists, otherwise show the account icon
          
          ElevatedButton(
            onPressed: () {
              // Handle save button
              Navigator.pop(context);
              // Add your code to navigate to the account settings page
            },
            child: const Text('Save'),
          ),
        ],
      ),
    );
  }

  Future<void> _showUpdateDialog(BuildContext context) async {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Update Profile Picture'),
          content: Column(
            children: [
              ListTile(
                title: const Text('From Gallery'),
                onTap: () {
                  // Handle gallery option
                  Navigator.pop(context);
                  // Add your code to open the gallery
                },
              ),
              ListTile(
                title: const Text('Take a Photo'),
                onTap: () {
                  // Handle camera option
                  Navigator.pop(context);
                  // Add your code to open the camera
                },
              ),
            ],
          ),
        );
      },
    );
  }
}*/

import 'package:flutter/material.dart';

class ProfilePicturePage extends StatefulWidget {
  @override
  _ProfilePicturePageState createState() => _ProfilePicturePageState();
}

class _ProfilePicturePageState extends State<ProfilePicturePage> {
  bool isButtonClicked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile Picture'),
        actions: [
          IconButton(
            onPressed: () {
              _showUpdateDialog(context);
            },
            icon: const Icon(Icons.edit),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              radius: 80,
              backgroundImage: AssetImage('path_to_profile_picture'), // Replace with actual path or placeholder
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: () {
                _showUpdateDialog(context);
                setState(() {
                  isButtonClicked = true;
                });
              },
              child: Text(
                isButtonClicked ? 'Update' : 'Update Profile Picture',
                style: TextStyle(fontSize: isButtonClicked ? 12 : null), // Decrease the font size when clicked
              ),
            ),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              // Handle save button
              Navigator.pop(context);
              // Add your code to navigate to the account settings page
            },
            child: const Text('Save'),
          ),
        ],
      ),
    );
  }

  Future<void> _showUpdateDialog(BuildContext context) async {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Update Profile Picture'),
          content: Column(
            children: [
              ListTile(
                title: const Text('From Gallery'),
                onTap: () {
                  // Handle gallery option
                  Navigator.pop(context);
                  // Add your code to open the gallery
                },
              ),
              ListTile(
                title: const Text('Take a Photo'),
                onTap: () {
                  // Handle camera option
                  Navigator.pop(context);
                  // Add your code to open the camera
                },
              ),
            ],
          ),
        );
      },
    );
  }
}





