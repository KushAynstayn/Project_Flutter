import 'package:flutter/material.dart';
import 'package:project_flutter/models/chat_message_entity.dart';
import 'package:project_flutter/widgets/chat_bubble.dart';
import 'package:project_flutter/widgets/chat_input.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    final username = ModalRoute.of(context)!.settings.arguments as String;
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
              Navigator.pushReplacementNamed(context, '/');
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
                  entity: ChatMessageEntity(
                    id: '1234',
                    text: 'Hello this is Kush Aynstayn!',
                    createdAt: DateTime.now().millisecondsSinceEpoch,
                    author: Author(userName: 'kushayns21')
                  ),
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
