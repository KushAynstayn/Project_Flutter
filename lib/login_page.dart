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
          Text(
            'Welcome Back! \n You\'ve been missed!',
            style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 20, color: Colors.purple
              ),
            ),
            Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSVgzklBLtIALEETiwR7K_hxTE30VW9Wk4MRybHDt61LZqpGneMaXi0vJ449KUeEFwwpLY&usqp=CAU', height: 200,),
            Container(
              height: 150,
              width: 150,
              //child: FlutterLogo(),
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.all(50),
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fitHeight,
                  image: NetworkImage(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSVgzklBLtIALEETiwR7K_hxTE30VW9Wk4MRybHDt61LZqpGneMaXi0vJ449KUeEFwwpLY&usqp=CAU')
                    ),
                color: Colors.lightBlue,
                borderRadius: BorderRadius.circular(24)
              ),
            )
        ],
      ),
    );
  }
}