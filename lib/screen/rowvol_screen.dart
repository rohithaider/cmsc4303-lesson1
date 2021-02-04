import 'package:flutter/material.dart';

class RowColScreen extends StatelessWidget {
  static const routeName = '/rowColScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Row/Column Layout Demo'),
      ),
      body: Text('Row Col'),
    );
  }
}
