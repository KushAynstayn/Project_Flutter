import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
   LoginPage({super.key});

  void loginUser() {
    print(userNameController.text);
    print(passwordController.text);
    print('login successful!');
  }

  final userNameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // TODO: Add the text and image from the design
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Let\'s sign you in!',
                textAlign: TextAlign.center,

                style: TextStyle(
                  fontSize: 30,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 0.5,
                ),
              ),
              Text(
                'Welcome Back! \n You\'ve been missed!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                  color: Colors.purple,
                ),
              ),
              Image.network(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSVgzklBLtIALEETiwR7K_hxTE30VW9Wk4MRybHDt61LZqpGneMaXi0vJ449KUeEFwwpLY&usqp=CAU',
                height: 200,
              ),

              TextField(
                controller: userNameController,
                decoration: InputDecoration(
                  hintText: 'Add your username',
                  hintStyle: TextStyle(color: Colors.blueGrey),
                  border: OutlineInputBorder(),
                ),
              ),

              TextField(
                controller: passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Add your password',
                  hintStyle: TextStyle(color: Colors.blueGrey),
                  border: OutlineInputBorder(),
                ),
              ),
              Padding(padding: EdgeInsets.only(bottom: 16)),

              ElevatedButton(
                onPressed: loginUser,
                child: Text(
                  'Login',
                  style: TextStyle(fontSize: 23, fontWeight: FontWeight.w300),
                ),
              ),
              InkWell(
                splashColor: Colors.deepPurple,
                onDoubleTap: () {
                  print('double tapped!');
                },
                onLongPress: () {
                  print('onlong pressed!');
                },
                onTap: () {
                  // TODO: Navigate to browser
                  print('Link clicked');
                },
                child: Column(
                  children: [
                    Text('Find us on'),
                    Text('https://kushaynstayn.com'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
