import 'package:flutter/material.dart';
import 'package:notify_me/src/data/comic.dart';
import 'package:notify_me/src/style.dart';
import 'package:notify_me/src/utils.dart';

class ListViewComic extends StatefulWidget {
  const ListViewComic({
    super.key,
  });

  @override
  State<ListViewComic> createState() => _ListViewComicState();
}

class _ListViewComicState extends State<ListViewComic> {
  List<Comic> comics = [];

  @override
  void initState() {
    super.initState();
    fetchComics();
  }

  Future<void> fetchComics() async {
    final fetchedComics = await Comic.fetchComics();
    setState(() {
      comics = fetchedComics;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: comics.length,
      itemBuilder: (context, index) {
        final comic = comics[index];
        return ListTile(
          contentPadding: const EdgeInsets.all(8.0),
          leading: Image.asset(
            comic.imageUrl,
            semanticLabel: comic.title,
            fit: BoxFit.cover,
            width: 50,
            height: 50,
          ),
          title: Text(
            comic.title,
            style: titleTextStyle,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          trailing: Text('${comic.readChapter}/${comic.lastChapter}'),
          onTap: () => navigateToComicScreen(context, comic),
        );
      },
    );
  }
}
