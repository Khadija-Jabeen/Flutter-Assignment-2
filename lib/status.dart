import 'package:flutter/material.dart';

class StatusView extends StatelessWidget {
  const StatusView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Status",
          style: TextStyle(color: Colors.black), // Set text color for contrast
        ),
        backgroundColor: Colors.white, // AppBar background color
        elevation: 0, // Remove shadow if desired
      ),
      body: Container(
        color: Colors.white, // Set body background color
        child: Stack( // Use Stack to overlay buttons on top of ListView
          children: [
            ListView(
              children: const [
                ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage('assets/images/PROFILE.jpeg'), // Change to your own image
                  ),
                  title: Text("My status"),
                  subtitle: Text("Tap to add status update"),
                ),
                // "Recent updates" label
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
                  child: Text(
                    "Recent updates",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey, // Adjust the color as needed
                    ),
                  ),
                ),
                // Example status updates with green border
                ListTile(
                  leading: StatusAvatar(imagePath: 'assets/images/PROFILE-2.jpg', borderColor: Colors.green),
                  title: Text("Ramsha"),
                  subtitle: Text("12 minutes ago"),
                ),
                ListTile(
                  leading: StatusAvatar(imagePath: 'assets/images/PROFILE-3.jpg', borderColor: Colors.green),
                  title: Text("Izma"),
                  subtitle: Text("Yesterday"),
                ),
                // Additional status updates...
                ListTile(
                  leading: StatusAvatar(imagePath: 'assets/images/PROFILE-2.jpg', borderColor: Colors.green),
                  title: Text("Ramsha"),
                  subtitle: Text("12 minutes ago"),
                ),
                ListTile(
                  leading: StatusAvatar(imagePath: 'assets/images/PROFILE-3.jpg', borderColor: Colors.green),
                  title: Text("Izma"),
                  subtitle: Text("Yesterday"),
                ),
                ListTile(
                  leading: StatusAvatar(imagePath: 'assets/images/PROFILE-2.jpg', borderColor: Colors.green),
                  title: Text("Ramsha"),
                  subtitle: Text("12 minutes ago"),
                ),
                ListTile(
                  leading: StatusAvatar(imagePath: 'assets/images/PROFILE-3.jpg', borderColor: Colors.green),
                  title: Text("Izma"),
                  subtitle: Text("Yesterday"),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
                  child: Text(
                    "Viewed updates",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey, // Adjust the color as needed
                    ),
                  ),
                ),
                ListTile(
                  leading: StatusAvatar(imagePath: 'assets/images/PROFILE-4.jpg', borderColor: Colors.grey),
                  title: Text("Sheeza"),
                  subtitle: Text("Yesterday"),
                ),
              ],
            ),
            // Positioned buttons at the bottom right corner
            Positioned(
              bottom: 16, // Position from the bottom
              right: 16, // Position from the right
              child: Column( // Change Row to Column for vertical alignment
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  FloatingActionButton(
                    onPressed: () {
                      // Action for the first button
                    },
                    backgroundColor: const Color.fromARGB(255, 239, 238, 238),
                    child: const Icon(Icons.edit),
                  ),
                  const SizedBox(height: 16), // Space between the buttons
                  FloatingActionButton(
                    onPressed: () {
                      // Action for the second button
                    },
                    backgroundColor: Colors.green,
                    foregroundColor: Colors.white,
                    child: const Icon(Icons.camera_alt),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Custom widget for the status avatar with configurable border color
class StatusAvatar extends StatelessWidget {
  final String imagePath;
  final Color borderColor; // Border color property

  const StatusAvatar({
    Key? key,
    required this.imagePath,
    this.borderColor = Colors.green, // Default border color
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50, // Set width for the avatar container
      height: 50, // Set height for the avatar container
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: borderColor, // Use the specified border color
          width: 5, // Border thickness
        ),
      ),
      child: CircleAvatar(
        backgroundImage: AssetImage(imagePath),
      ),
    );
  }
}
