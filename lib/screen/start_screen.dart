import 'package:flutter/material.dart';
import 'package:lesson1/screen/button_screen.dart';
import 'package:lesson1/screen/expandedwidget_screen.dart';
import 'package:lesson1/screen/font_screen.dart';
import 'package:lesson1/screen/image_screen.dart';
import 'package:lesson1/screen/materialdesign_screen.dart';
import 'package:lesson1/screen/rowvol_screen.dart';

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
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            RaisedButton(
              onPressed: () => Navigator.pushNamed(context,
                  MaterialDesignScreen.routeName), // navigating to another screen

              child: Text(
                'Material Design Demo',
                style: Theme.of(context).textTheme.button,
              ),
            ),
            RaisedButton(
              onPressed: () => Navigator.pushNamed(context, ImageScreen.routeName),
              child: Text('Image Demo Screen', style: Theme.of(context).textTheme.button),
            ),
            RaisedButton(
              onPressed: () => Navigator.pushNamed(context, ButtonScreen.routeName),
              child:
                  Text('Button Demo Screen', style: Theme.of(context).textTheme.button),
            ),
            RaisedButton(
              onPressed: () => Navigator.pushNamed(context, FontScreen.routeName),
              child: Text('Custom Font Demo', style: Theme.of(context).textTheme.button),
            ),
            RaisedButton(
              onPressed: () => Navigator.pushNamed(context, RowColScreen.routeName),
              child:
                  Text('Row Col layout Demo', style: Theme.of(context).textTheme.button),
            ),
            RaisedButton(
              onPressed: () =>
                  Navigator.pushNamed(context, ExpandedWidgetScreen.routeName),
              child:
                  Text('Expanded Widget Demo', style: Theme.of(context).textTheme.button),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('Floating action button');
        },
        child: Icon(Icons.add),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.business), label: 'Business'),
        ],
        currentIndex: 1,
        onTap: (index) {
          print('Current index = $index');
        },
      ),
    );
  }
}
