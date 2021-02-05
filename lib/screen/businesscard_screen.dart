import 'package:flutter/material.dart';

class BusinessCardScreen extends StatelessWidget {
  static const routeName = '/ businessCardScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Business Card'),
      ),
      body: Text('Business Card demo'),
    );
  }
}
