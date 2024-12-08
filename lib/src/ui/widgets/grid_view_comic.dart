import 'package:flutter/material.dart';
import 'package:notify_me/src/data/comic.dart';

class GridViewComic extends StatelessWidget {
  const GridViewComic({
    super.key,
  });

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
            child: Stack(children: [
              Container(
                color: Colors.red,
                child: Image.asset(
                  comic.imageUrl,
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
                    style: const TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
            ]),
          );
        },
      ),
    );
  }
}
