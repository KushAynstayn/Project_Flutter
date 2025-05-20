import 'package:flutter/material.dart';
import 'package:project_flutter/widgets/chat_bubble.dart';
import 'package:project_flutter/widgets/chat_input.dart';

class ChatPage extends StatelessWidget {
  final String username; 
  const ChatPage({super.key, required this.username});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Colors.black,
        title: Text('Yooo $username!'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
              print('Icon Pressed!');
            },
            icon: Icon(Icons.logout),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return ChatBubble(
                  alignment:
                      index % 2 == 0
                          ? Alignment.centerLeft
                          : Alignment.centerRight,
                  message: 'Hello, this is Aynstayn!',
                );
              },
            ),
          ),
          ChatInput(),
        ],
      ),
    );
  }
}
