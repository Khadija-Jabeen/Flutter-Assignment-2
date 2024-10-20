import 'package:flutter/material.dart';

class CallPage extends StatelessWidget {
  CallPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calls'),
        backgroundColor: Colors.green, // AppBar color
      ),
      body: ListView(
        children: const [
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/images/PROFILE.jpeg'), // Example image
            ),
            title: Text('Khadija'),
            subtitle: Text('Today, 10:30 AM'),
            trailing: Icon(Icons.call_made, color: Colors.green), // Icon for outgoing call
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/images/PROFILE-2.jpg'), // Example image
            ),
            title: Text('Ramsha'),
            subtitle: Text('Yesterday, 5:15 PM'),
            trailing: Icon(Icons.call_received, color: Colors.red), // Icon for incoming call
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/images/PROFILE-4.jpg'), // Example image
            ),
            title: Text('Afshan'),
            subtitle: Text('Yesterday, 7:05 AM'),
            trailing: Icon(Icons.call_received, color: Colors.green), // Icon for incoming call
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/images/PROFILE.jpeg'), // Example image
            ),
            title: Text('Khadija'),
            subtitle: Text('Today, 10:30 AM'),
            trailing: Icon(Icons.call_made, color: Colors.green), // Icon for outgoing call
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/images/PROFILE-2.jpg'), // Example image
            ),
            title: Text('Ramsha'),
            subtitle: Text('Yesterday, 5:15 PM'),
            trailing: Icon(Icons.call_received, color: Colors.red), // Icon for incoming call
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/images/PROFILE-4.jpg'), // Example image
            ),
            title: Text('Afshan'),
            subtitle: Text('Yesterday, 7:05 AM'),
            trailing: Icon(Icons.call_received, color: Colors.green), // Icon for incoming call
          ),
          // Add more ListTile widgets for other calls...
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Action for the call button
          // This could be an action to open a dialer, contacts, etc.
        },
        backgroundColor: Colors.green,
        child: const Icon(Icons.call, color: Colors.white), // Call icon
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat, // Position the button at the bottom right
    );
  }
}
