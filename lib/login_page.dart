import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('Button clicked');
        },
      ),
      // TODO: Add the text and image from the design
      body: Column(
        children: [
        Text(
         'Let\'s sign you in!', 
         style: TextStyle(
           fontSize: 30, 
           color: Colors.indigo,
           fontWeight: FontWeight.bold, letterSpacing: 0.5
         ),
       ),
          Center(
            child: Text(
              'Welcome Back! \n You\'ve been missed!',
              style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 20, color: Colors.purple
                ),
              ),
          ),
        ],
      ),
    );
  }
}