import 'package:flutter/material.dart';

class ImageScreen extends StatelessWidget {
  static const routeName = '/imageScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image demo screen'),
      ),
      body: ListView(
        children: [
          Container(
            height: 200,
            color: Colors.blueAccent,
            child: Image.network(
                'https://m.media-amazon.com/images/I/815lIY15H4L._AC_UL480_FMwebp_QL65_.jpg'),
          ),
          Icon(
            Icons.ac_unit,
            size: 100,
            color: Colors.red,
          ),
          Container(
            height: 200,
            color: Colors.teal,
            child: Image.network(
                'https://m.media-amazon.com/images/I/81fA3NNiBRL._AC_UL480_FMwebp_QL65_.jpg'),
          ),
          Icon(
            Icons.system_update,
            size: 200,
            color: Colors.pink,
          ),
          Container(
              height: 200,
              color: Colors.yellow[100],
              child: Image.asset('images/download.jpg'))
        ],
      ),
    );
  }
}
