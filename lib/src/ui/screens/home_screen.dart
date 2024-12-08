import 'package:flutter/material.dart';
import 'package:notify_me/src/data/comic.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            height: 40.0,
            color: Colors.grey,
            child: Text('Search Bar'),
          ),
          Text('List View'),
          Text(comics.length.toString()),
        ],
      ),
    );
  }
}
