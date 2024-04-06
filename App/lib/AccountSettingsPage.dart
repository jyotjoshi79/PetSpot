/*import 'package:flutter/material.dart';

class AccountSettingsPage extends StatefulWidget {
  const AccountSettingsPage({Key? key}) : super(key: key);

  @override
  State<AccountSettingsPage> createState() => _AccountSettingsPageState();
}

class _AccountSettingsPageState extends State<AccountSettingsPage> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Account Settings'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Email'),
              TextFormField(
                controller: _emailController,
                decoration: const InputDecoration(hintText: 'example@email.com'),
              ),
              const SizedBox(height: 20),
              const Text('Password'),
              TextFormField(
                controller: _passwordController,
                obscureText: true,
                decoration: const InputDecoration(hintText: 'Password'),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {},
                child: const Text('Save'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}*/

/*import 'package:flutter/material.dart';

class AccountSettingsPage extends StatefulWidget {
  const AccountSettingsPage({Key? key}) : super(key: key);

  @override
  State<AccountSettingsPage> createState() => _AccountSettingsPageState();
}

class _AccountSettingsPageState extends State<AccountSettingsPage> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Account Settings'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Email'),
              TextFormField(
                controller: _emailController,
                decoration: const InputDecoration(hintText: 'example@email.com'),
              ),
              const SizedBox(height: 20),
              const Text('Password'),
              TextFormField(
                controller: _passwordController,
                obscureText: true,
                decoration: const InputDecoration(hintText: 'Password'),
              ),
              const SizedBox(height: 20),
              // Button for Profile Picture
              InkWell(
                onTap: () {
                  // Handle profile picture option
                },
                child: ListTile(
                  title: const Text('Profile Picture'),
                  trailing: const Icon(Icons.arrow_forward_ios),
                ),
              ),
              // Button for Theme
              InkWell(
                onTap: () {
                  // Handle theme option
                },
                child: ListTile(
                  title: const Text('Theme'),
                  trailing: const Icon(Icons.arrow_forward_ios),
                ),
              ),
              // Button for Account
              InkWell(
                onTap: () {
                  // Handle account option
                },
                child: ListTile(
                  title: const Text('Account'),
                  trailing: const Icon(Icons.arrow_forward_ios),
                ),
              ),
              const SizedBox(height: 20),
              // ElevatedButton(
              //   onPressed: () {
              //     // Handle save button
              //   },
              //   child: const Text('Save'),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}*/

import 'package:flutter/material.dart';
// import 'package:petspot_app/theme_settings.dart';
import 'profile_picture.dart';
 import 'screens/provider.dart';
import 'theme_settings.dart';
import 'account_details.dart';

class AccountSettingsPage extends StatefulWidget {
  const AccountSettingsPage({Key? key}) : super(key: key);

  @override
  State<AccountSettingsPage> createState() => _AccountSettingsPageState();
}

class _AccountSettingsPageState extends State<AccountSettingsPage> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Account Settings'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //const Text('Email'),
              // TextFormField(
              //   controller: _emailController,
              //   decoration: const InputDecoration(hintText: 'example@email.com'),
              // ),
              // const SizedBox(height: 20),
              // const Text('Password'),
              // TextFormField(
              //   controller: _passwordController,
              //   obscureText: true,
              //   decoration: const InputDecoration(hintText: 'Password'),
              // ),
              const SizedBox(height: 20),
              // Button for Profile Picture
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ProfilePicturePage()),
                  );
                },
                child: ListTile(
                  title: const Text('Profile Picture'),
                  trailing: const Icon(Icons.arrow_forward_ios),
                ),
              ),
              // Button for Theme
              // InkWell(
              //   onTap: () {
              //     Navigator.push(context,
              //       MaterialPageRoute(builder: (context) => ThemeSettingsPage()),
              //     );
              //   },
                // child: 
                ListTile(
                  title: const Text('Theme'),
                  trailing: const Icon(Icons.arrow_forward_ios),
                ),
              
              // Button for Account
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AccountDetailsPage()),
                  );
                },
                child: ListTile(
                  title: const Text('Account'),
                  trailing: const Icon(Icons.arrow_forward_ios),
                ),
              ),
              const SizedBox(height: 20),
              // ElevatedButton(
              //   onPressed: () {
              //     // Handle save button
              //   },
              //   child: const Text('Save'),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}


