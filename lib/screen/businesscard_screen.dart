import 'package:flutter/material.dart';

class BusinessCardScreen extends StatelessWidget {
  static const routeName = '/ businessCardScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Business Card'),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: ClipOval(
                child: Image.asset(
                  'images/business.jpg',
                  height: 200,
                ),
              ),
            ),
            Text(
              'Name:',
              style: Theme.of(context).textTheme.headline6,
            ),
            Text('Mohtashim Rohit', style: Theme.of(context).textTheme.headline4),
            Text(
              'Title:',
              style: Theme.of(context).textTheme.headline6,
            ),
            Text('Student', style: Theme.of(context).textTheme.headline4),
            Text(
              'Major:',
              style: Theme.of(context).textTheme.headline6,
            ),
            Text('Computer Science', style: Theme.of(context).textTheme.headline4),
            Row(
              children: [
                Icon(Icons.email),
                Text('mrohit@uco.edu', style: Theme.of(context).textTheme.headline5),
              ],
            ),
            Row(
              children: [
                Icon(Icons.phone),
                Text('405-850-1170', style: Theme.of(context).textTheme.headline5),
              ],
            )
          ],
        ),
      ),
    );
  }
}
