import 'package:flutter/material.dart';
import 'package:project_flutter/models/chat_message_entity.dart';
import 'package:project_flutter/widgets/chat_bubble.dart';
import 'package:project_flutter/widgets/chat_input.dart';

class ChatPage extends StatelessWidget {
  ChatPage({super.key});

  List<ChatMessageEntity> _messages = [
    ChatMessageEntity(
      author: Author(userName: 'aynstayn'), 
      createdAt: 2131231242, 
      id: '1', 
      text: 'First text'),
    ChatMessageEntity(
      author: Author(userName: 'aynstayn'),
      createdAt: 2131231442,
      id: '1',
      text: 'Second text',
      imageUrl: 'https://3009709.youcanlearnit.net/Alien_LIL_131338.png'),
    ChatMessageEntity(
      author: Author(userName: 'ksh'),
      createdAt: 2131234242,
      id: '1',
      text: 'Third text',
    )
  ];

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
              itemCount: _messages.length,
              itemBuilder: (context, index) {
                return ChatBubble(
                  alignment:
                      _messages[index].author.userName == 'aynstayn'
                          ? Alignment.centerRight
                          : Alignment.centerLeft,
                  entity: _messages[index]
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
