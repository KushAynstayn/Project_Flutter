import 'package:project_flutter/models/chat_message_entity.dart';
import 'package:project_flutter/widgets/picker_body.dart';
import 'package:flutter/material.dart';

class ChatInput extends StatelessWidget {
  final Function(ChatMessageEntity) onSubmit;
  ChatInput({super.key, required this.onSubmit});


  final chatMessageController = TextEditingController();

  void onSendButtonPressed() {
    print('ChatMessage: ${chatMessageController.text}');
    //TODO: Add this new message to the default list
    final newChatMessage = ChatMessageEntity(
        text: chatMessageController.text,
        id: "244",
        createdAt: DateTime.now().millisecondsSinceEpoch,
        author: Author(userName: 'aynstayn'));

    onSubmit(newChatMessage);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {
              //TODO: Open a bottom sheet that shows a grid of images
              showModalBottomSheet(
                  context: context,
                  builder: (BuildContext context) {
                    return NetworkImagePickerBody();
                  });
            },
            icon: Icon(Icons.add, color: Colors.white),
          ),
          Expanded(
            child: TextField(
              keyboardType: TextInputType.multiline,
              maxLines: 5,
              minLines: 1,
              controller: chatMessageController,
              textCapitalization: TextCapitalization.sentences,
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                hintText: "Type your message",
                hintStyle: TextStyle(color: Colors.blueGrey),
                border: InputBorder.none,
              ),
            ),
          ),
          IconButton(
            onPressed: onSendButtonPressed,
            icon: Icon(Icons.send, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
