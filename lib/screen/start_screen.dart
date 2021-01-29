import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  static const routeName = '/startScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Start Menu'),
        actions: [
          IconButton(
              icon: Icon(Icons.alarm), //passing icon object
              onPressed: () {
                //using annoynimous function
                print('Alarm');
              }),
          IconButton(
              icon: Icon(Icons.message_sharp),
              onPressed: () {
                print('Message');
              })
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child: Text('Drawer Header'),
            ),
            ListTile(
              leading: Icon(Icons.message),
              title: Text('Message'),
            ),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('Profile'),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('configuration'),
            )
          ],
        ),
      ),
      body: Column(
        children: [
          RaisedButton(
            onPressed: () {
              print('Menu 1');
            },
            child: Text('Menu 1'),
          ),
          RaisedButton(
            onPressed: () {
              print('Menu 2');
            },
            child: Text('Menu 2'),
          ),
          Text('third menu')
        ],
      ),
    );
  }
}
