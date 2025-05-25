import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:project_flutter/models/chat_message_entity.dart';
import 'package:project_flutter/widgets/chat_bubble.dart';
import 'package:project_flutter/widgets/chat_input.dart';
import 'package:flutter/services.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  //initiate state of messages
  List<ChatMessageEntity> _messages = [];

  _loadInitialMessages() async {
    final response = await rootBundle.loadString('assets/mock_messages.json');

    final List<dynamic> decodeList = jsonDecode(response) as List;

    final List<ChatMessageEntity> chatMessages = decodeList.map((listItem) {
      return ChatMessageEntity.fromJson(listItem);
    }).toList();

    print(chatMessages.length);

    //final state of messages
    setState(() {
      _messages = chatMessages;
    });
  }


  onMessageSent(ChatMessageEntity entity) {
    _messages.add(entity);
    setState(() {});
  }

  @override
  void initState() {
    _loadInitialMessages();
    // TODO: implement initState
    super.initState();
  }


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
          ChatInput(
            onSubmit: onMessageSent,
          ),
        ],
      ),
    );
  }
}
