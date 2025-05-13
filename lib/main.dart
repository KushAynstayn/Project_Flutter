import 'package:flutter/material.dart';
import 'package:project_flutter/login_page.dart';

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
      home: LoginPage(),
    );
  }
}





// TODO Create ChatApp widget
// TODO Create LoginPage widget