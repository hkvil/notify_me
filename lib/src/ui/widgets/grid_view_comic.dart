import 'package:flutter/material.dart';
import 'package:notify_me/src/data/comic.dart';
import 'package:notify_me/src/style.dart';
import 'package:notify_me/src/utils.dart';

//https://github.com/Baseflow/flutter_cached_network_image/issues/134
class GridViewComic extends StatefulWidget {
  const GridViewComic({
    super.key,
  });

  @override
  State<GridViewComic> createState() => _GridViewComicState();
}

class _GridViewComicState extends State<GridViewComic> {
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
    return Flexible(
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
          childAspectRatio: 0.7,
        ),
        itemCount: comics.length,
        itemBuilder: (context, index) {
          final comic = comics[index];
          return GridTile(
            child: InkWell(
              onTap: () => navigateToComicScreen(context, comic),
              child: Stack(children: [
                Container(
                  width: double.infinity,
                  color: Colors.red,
                  child: Image.asset(
                    comic.imageUrl,
                    semanticLabel: comic.title,
                    fit: BoxFit.fill,
                  ),
                ),
                Positioned(
                  bottom: 15,
                  left: 0,
                  right: 0,
                  child: Container(
                    color: Colors.grey[200]?.withOpacity(0.5),
                    child: Text(
                      comic.title,
                      style: titleTextStyle,
                      textAlign: TextAlign.center,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
              ]),
            ),
          );
        },
      ),
    );
  }
}
