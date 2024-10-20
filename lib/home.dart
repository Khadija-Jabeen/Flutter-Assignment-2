import 'package:flutter/material.dart';
import 'package:secondassignment/chat.dart';
import 'call.dart'; // Import the CallPage

class HomeView extends StatefulWidget {
  HomeView({Key? key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int _currentIndex = 0; // Track the selected icon index

  // Sample data for titles, subtitles, profile images, message times, and unread messages
  final List<Map<String, dynamic>> contacts = [
    {
      "title": "(Me) Khadija",
      "subtitle": "Flutter assignment-2 file",
      "image": "assets/images/PROFILE.jpeg",
      "time": "10:30 PM",
      "unreadMessages": 0
    },
    {
      "title": "Ramsha",
      "subtitle": "Han done",
      "image": "assets/images/PROFILE-2.jpg",
      "time": "5:15 PM",
      "unreadMessages": 4
    },
    {
      "title": "Izma",
      "subtitle": "Kahan ho???",
      "image": "assets/images/PROFILE-3.jpg",
      "time": "2:00 PM",
      "unreadMessages": 2
    },
    {
      "title": "Afshan",
      "subtitle": "Yrrr research paper likh liya?",
      "image": "assets/images/PROFILE-4.jpg",
      "time": "Yesterday",
      "unreadMessages": 6
    },
    {
      "title": "Aisha",
      "subtitle": "Ma nay recipe try nahi ki.",
      "image": "assets/images/PROFILE-5.jpeg",
      "time": "Yesterday",
      "unreadMessages": 5
    },
    {
      "title": "Sarah",
      "subtitle": "Ma assignment kar rahi hun HCI ka",
      "image": "assets/images/PROFILE-6.jpg",
      "time": "Yesterday",
      "unreadMessages": 0
    },
    {
      "title": "Sukaina",
      "subtitle": "Dj mera wait karna chutti ma",
      "image": "assets/images/PROFILE-7.jpg",
      "time": "10/18/24",
      "unreadMessages": 0
    },
    {
      "title": "Maheen",
      "subtitle": "Yrrr birthday wali pics send karo",
      "image": "assets/images/PROFILE-8.jpeg",
      "time": "10/18/24",
      "unreadMessages": 0
    },
    {
      "title": "Mama",
      "subtitle": "Uni pohanch gaee?",
      "image": "assets/images/PROFILE-9.jpg",
      "time": "10/16/24",
      "unreadMessages": 0
    },
    {
      "title": "Hamna",
      "subtitle": "D-19 ma ajaoo",
      "image": "assets/images/PROFILE-10.jpg",
      "time": "9/5/24",
      "unreadMessages": 0
    },
    {
      "title": "Sehar",
      "subtitle": "hahaha",
      "image": "assets/images/PROFILE-2.jpg",
      "time": "2/5/23",
      "unreadMessages": 0
    },
    {
      "title": "Sheeza",
      "subtitle": "Ok ma wo lay aoon gi tum bhi spoons lay ana",
      "image": "assets/images/PROFILE-4.jpg",
      "time": "7/1/22",
      "unreadMessages": 0
    },
    {
      "title": "Nadia",
      "subtitle": "Acha sahi",
      "image": "assets/images/PROFILE-6.jpg",
      "time": "5/14/22",
      "unreadMessages": 0
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white, // AppBar background color
        title: const Text(
          "WhatsApp",
          style: TextStyle(
            color: Colors.green, // Text color
            fontSize: 20, // Font size
            fontWeight: FontWeight.bold, // Font weight
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.camera_alt),
            onPressed: () {
              // Camera action
            },
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: Icon(Icons.more_vert),
          ),
        ],
      ),
      body: _currentIndex == 0 ? _buildChatList() :  CallPage(), // Use conditional to switch between pages
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        child: Container(
          padding: const EdgeInsets.all(8.0),
          color: Colors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: 100,
                height: 40,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 158, 214, 93), // Background color for the Chat icon
                  borderRadius: BorderRadius.circular(20), // Rounded corners
                ),
                child: IconButton(
                  icon: const Icon(Icons.chat, color: Colors.white), // Chat icon
                  onPressed: () {
                    setState(() {
                      _currentIndex = 0; // Switch to chat/home page
                    });
                  },
                ),
              ),
              IconButton(
                icon: const Icon(Icons.circle_notifications_sharp), // Status icon
                onPressed: () {
                  // Status action
                },
              ),
              IconButton(
                icon: const Icon(Icons.groups), // Groups icon
                onPressed: () {
                  // Groups action
                },
              ),
              IconButton(
                icon: const Icon(Icons.call), // Call icon
                onPressed: () {
                  setState(() {
                    _currentIndex = 1; // Switch to call page
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Build the chat list view
  Widget _buildChatList() {
    return Container(
      color: Colors.white, // Set the background color to white
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Padding(
                  padding: EdgeInsets.all(8.0), // Adjust padding if needed
                  child: Image.asset(
                    'assets/images/meta_logo.png', // Meta AI icon
                    width: 24, // Adjust size if needed
                    height: 24,
                  ),
                ),
                hintText: 'Ask Meta AI or Search', // Placeholder text
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30), // Rounded corners
                  borderSide: BorderSide.none, // No visible border
                ),
                filled: true, // To apply background color
                fillColor: Colors.grey[200], // Background color for search bar
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: contacts.length, // Use the length of the contacts list
              itemBuilder: (context, index) {
                return ListTile(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const ChatView()),
                    );
                  },
                  tileColor: Colors.blue,
                  leading: CircleAvatar(
                    backgroundImage: AssetImage(contacts[index]["image"]!), // Get image from contacts
                  ),
                  title: Text(contacts[index]["title"]!), // Get title from contacts
                  subtitle: Text(contacts[index]["subtitle"]!), // Get subtitle from contacts
                  trailing: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        contacts[index]["time"]!,
                        style: const TextStyle(fontSize: 12), // Time text style
                      ),
                      const SizedBox(height: 4), // Spacing between time and circle
                      if (contacts[index]["unreadMessages"] > 0)
                        Container(
                          padding: const EdgeInsets.all(6), // Padding for text inside the circle
                          decoration: const BoxDecoration(
                            color: Colors.green, // Circle color
                            shape: BoxShape.circle, // Rounded circle
                          ),
                          child: Text(
                            contacts[index]["unreadMessages"].toString(), // Display unread messages
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 10, // Font size for the text inside the circle
                            ),
                          ),
                        ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
