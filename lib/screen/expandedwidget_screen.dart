import 'package:flutter/material.dart';

class ExpandedWidgetScreen extends StatelessWidget {
  static const routeName = '/expandedWidgetScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Expanded widget"),
      ),
      body: Text('Expanded widget'),
    );
  }
}
