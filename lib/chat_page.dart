import 'dart:convert';

import 'package:project_flutter/models/image_model.dart';
import 'package:http/http.dart' as http;
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
    
    rootBundle.loadString('assets/mock_messages.json').then((response) {
      final List<dynamic> decodeList = jsonDecode(response) as List;

    
    final List<ChatMessageEntity> _chatMessages = decodeList.map((listItem) {
      return ChatMessageEntity.fromJson(listItem);
    }).toList();

    print(_chatMessages.length);

       //final state of messages
      setState(() {
        _messages = _chatMessages;
      });
    }).then((_) {
      print('Done!');
    });
    //print('Something');
  }


  onMessageSent(ChatMessageEntity entity) {
    _messages.add(entity);
    setState(() {});
  }

  //TODO: Get Network Images from API
  _getNetworkImages() async {
    var endpointUrl = Uri.parse('https://picsum.photos/v2/list');

    final response = await http.get(endpointUrl);

    if (response.statusCode == 200) {
      final List<dynamic> decodeList = jsonDecode(response.body) as List;

      final List<PixelfordImage> _imageList = decodeList.map((listItem) {
        return PixelfordImage.fromJson(listItem);
      }).toList();
      print(_imageList[0].urlFullSize);
    }
  }

  @override
  void initState() {
    _loadInitialMessages();
    _getNetworkImages();
    // TODO: implement initState
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
     _getNetworkImages();
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
