import 'package:flutter/material.dart';

class ButtonScreen extends StatelessWidget {
  static const routeName = '/buttonScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Button Demo'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => print('Floating AB'),
        child: Icon(Icons.add),
      ),
      body: Column(
        children: [
          RaisedButton(
            onPressed: () => print('raised button 1'),
            child: Text(
              'Raised button 1',
              style: Theme.of(context).textTheme.headline5,
            ),
            padding: EdgeInsets.fromLTRB(20.0, 10.0, 0.0, 30),
          ),
        ],
      ),
    );
  }
}
