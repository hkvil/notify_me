import 'package:flutter/material.dart';
import 'package:notify_me/src/ui/widgets/grid_view_comic.dart';
import 'package:notify_me/src/ui/widgets/search_bar_comic.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          SearchBarComic(),
          GridViewComic(),
        ],
      ),
    );
  }
}
