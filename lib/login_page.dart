import 'package:flutter/material.dart';
import 'package:project_flutter/chat_page.dart';
import 'package:project_flutter/utils/spaces.dart';
import 'package:project_flutter/utils/textfield_styles.dart';
import 'package:project_flutter/widgets/login_text_field.dart';
import 'package:social_media_buttons/social_media_buttons.dart';
import 'package:url_launcher/url_launcher.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final _formkey = GlobalKey<FormState>();

  void loginUser(context) {
    if (_formkey.currentState != null && _formkey.currentState!.validate()) {
      print(userNameController.text);
      print(passwordController.text);

      Navigator.pushReplacementNamed(
        context,
        '/chat',
        arguments: '${userNameController.text}',
      );
      print('login successful!');
    } else {
      print('not successful');
    }
  }

  final userNameController = TextEditingController();
  final passwordController = TextEditingController();
  final _mainUrl = "https://kushaynstayn.com";

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
              Image.asset('assets/picimg.png', height: 200),
              SizedBox(height: 24),

              Form(
                key: _formkey,
                child: Column(
                  children: [
                    LoginTextField(
                      hintText: "Enter your username",
                      validator: (value) {
                        if (value != null &&
                            value.isNotEmpty &&
                            value.length < 5) {
                          return "Your username should be more than 5 characters";
                        } else if (value != null && value.isEmpty) {
                          return "Please type you username";
                        }
                        return null;
                      },
                      controller: userNameController,
                    ),

                    verticalSpacing(24),
                    LoginTextField(
                      hasAsterisks: true,
                      controller: passwordController,
                      hintText: 'Enter your password',
                    ),
                  ],
                ),
              ),
              verticalSpacing(24),

              ElevatedButton(
                onPressed: () {
                  loginUser(context);
                },
                child: Text(
                  'Login',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w300),
                ),
              ),
              SizedBox(height: 24),

              GestureDetector(
                onTap: () async {
                  // TODO: Navigate to browser
                  print('Link clicked');
                  if (!await launchUrl(_mainUrl as Uri)) {
                    throw Exception('Could not launch this!');
                  }
                },

                child: Column(children: [Text('Find us on'), Text(_mainUrl)]),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SocialMediaButton.twitter(
                   size: 20,
                    color: Colors.blue,
                    url: "https://twitter.com/pooja_bhaumik",),
                  SocialMediaButton.linkedin(
                    url: "https://linkedin.com/in/poojab26",)
                ],)
            
            ],
          ),
        ),
      ),
    );
  }
}
