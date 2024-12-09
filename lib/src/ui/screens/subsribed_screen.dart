//Nanti tambah search bar juga sama filter by recent read

import 'package:flutter/material.dart';
import 'package:notify_me/src/style.dart';
import 'package:notify_me/src/ui/widgets/list_view_comic.dart';

class SubsribedScreen extends StatelessWidget {
  const SubsribedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Subscribed Comics',
          style: titleTextStyle,
        ),
      ),
      body: ListViewComic(),
    );
  }
}
