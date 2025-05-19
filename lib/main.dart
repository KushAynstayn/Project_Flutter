import 'package:flutter/material.dart';
import 'package:project_flutter/chat_page.dart';
import 'package:project_flutter/counter_stateful_demo.dart';
import 'package:project_flutter/login_page.dart';
import 'package:project_flutter/widgets/chat_input.dart';

void main() {
  runApp(ChatApp());
}

class ChatApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'Project Flutter',
      theme: ThemeData(useMaterial3: false, primarySwatch: Colors.deepPurple),
      home: ChatInput(),
      //LoginPage(),
      // CounterStateful(buttonColor: Colors.blue,),
    );
  }
}





// TODO Create ChatApp widget
// TODO Create LoginPage widget