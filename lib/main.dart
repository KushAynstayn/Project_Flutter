import 'package:flutter/material.dart';
import 'package:project_flutter/chat_page.dart';
import 'package:project_flutter/demo/counter_stateful_demo.dart';
import 'package:project_flutter/login_page.dart';
import 'package:project_flutter/services/auth_service.dart';
import 'package:project_flutter/widgets/chat_input.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await AuthService.init();
  runApp(Provider(
    create: (BuildContext context) => AuthService(),
    child: ChatApp(),
  ));
}

class ChatApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'Project Flutter',
      theme: ThemeData(
        canvasColor: Colors.transparent,
        useMaterial3: false, 
        primarySwatch: Colors.deepPurple),
      home: //ChatPage(),
      LoginPage(),
      // CounterStateful(buttonColor: Colors.blue,),
      routes: {
        '/chat' : (context) => ChatPage()
      },
    );
  }
}





// TODO Create ChatApp widget
// TODO Create LoginPage widget