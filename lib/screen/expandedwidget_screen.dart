import 'package:flutter/material.dart';

class ExpandedWidgetScreen extends StatelessWidget {
  static const routeName = '/expandedWidgetScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Expanded widget"),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  color: Colors.teal[700],
                  child: Text('A', style: Theme.of(context).textTheme.headline6),
                ),
              ),
              Expanded(
                flex: 2,
                child: Image.asset('images/download.jpg'),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  color: Colors.red[700],
                  child: Text('B', style: Theme.of(context).textTheme.headline6),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
