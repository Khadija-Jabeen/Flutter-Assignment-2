import 'package:flutter/material.dart';


class ChatView extends StatelessWidget {
  const ChatView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
      ),
      body: const Column(
        children: [
        Text("Welcome to my chat"),
      ],),
    );
  }
}
