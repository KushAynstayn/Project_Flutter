import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Colors.black,
        title: Text('Kush Aynstayn'),
        actions: [
          IconButton(
            onPressed: () {
              print('Icon Pressed!');
            },
            icon: Icon(Icons.logout),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    padding: EdgeInsets.all(24),
                    child: Column(
                      
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text('Hi, this is your message!', style: TextStyle(fontSize: 20, color: Colors.white )),
                        Image.network('https://docs.flutter.dev/assets/images/dash/dash-fainting.gif', height: 200, width: 200
                        ,)
                      ],
                    ),
                    margin: EdgeInsets.all(50),
                    decoration: BoxDecoration(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(12),
                        topRight: Radius.circular(12),
                        bottomLeft: Radius.circular(12)
                      )
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    padding: EdgeInsets.all(24),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text('Hi, this is your message!', style: TextStyle(fontSize: 20, color: Colors.white )),
                        Image.network('https://docs.flutter.dev/assets/images/dash/dash-fainting.gif', height: 200, width: 200
                        ,)
                      ],
                    ),
                    margin: EdgeInsets.all(50),
                    decoration: BoxDecoration(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(12),
                        topRight: Radius.circular(12),
                        bottomLeft: Radius.circular(12)
                      )
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    padding: EdgeInsets.all(24),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text('Hi, this is your message!', style: TextStyle(fontSize: 20, color: Colors.white )),
                        Image.network('https://docs.flutter.dev/assets/images/dash/dash-fainting.gif', height: 200, width: 200
                        ,)
                      ],
                    ),
                    margin: EdgeInsets.all(50),
                    decoration: BoxDecoration(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(12),
                        topRight: Radius.circular(12),
                        bottomLeft: Radius.circular(12)
                      )
                    ),
                  ),
                ),
            
            
                
              ],
            ),
          ),
          Container(
                height: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: (){}, 
                      icon: Icon(
                        Icons.add,
                        color: Colors.white,
                      )
                    ),
                     IconButton(
                      onPressed: (){}, 
                      icon: Icon(
                        Icons.send,
                        color: Colors.white,
                      )
                    )
                  ],
                ),
                decoration: BoxDecoration(
                  color: Colors.purple,
                  borderRadius: BorderRadius.vertical(top: Radius.circular(20))
                ),
              )
        ],
      ),
    );
  }
}
