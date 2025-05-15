import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // TODO: Add the text and image from the design
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
          Text(
           'Let\'s sign you in!',
           
           style: TextStyle(
             fontSize: 30, 
             color: Colors.indigo,
             fontWeight: FontWeight.bold, letterSpacing: 0.5
           ),
         ),
            Text(
              'Welcome Back! \n You\'ve been missed!',
              textAlign: TextAlign.center, 
              style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 20, color: Colors.purple
                ),
              ),
              Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSVgzklBLtIALEETiwR7K_hxTE30VW9Wk4MRybHDt61LZqpGneMaXi0vJ449KUeEFwwpLY&usqp=CAU', height: 200,),
              
          ],
        ),
      ),
    );
  }
}