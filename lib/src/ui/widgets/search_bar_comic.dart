import 'package:flutter/material.dart';
import 'package:notify_me/src/data/comic.dart';

//https://api.flutter.dev/flutter/material/SearchAnchor/SearchAnchor.bar.html
//Untuk searchbar suggestion belum benar , untuk sementara sudah cukup
//Dan suggestion masih case sensitive
class SearchBarComic extends StatefulWidget {
  const SearchBarComic({super.key});

  @override
  State<SearchBarComic> createState() => _SearchBarComicState();
}

class _SearchBarComicState extends State<SearchBarComic> {
  Comic? selectedComic;
  List<Comic> comics = [];

  Iterable<Widget> getComicList(SearchController controller) {
    return comics.map((Comic comic) => ListTile(
          title: Text(comic.title),
          onTap: () {
            selectedComic = comic;
            controller.text = comic.title;
            controller.selection =
                TextSelection.collapsed(offset: controller.text.length);
          },
        ));
  }

  Iterable<Widget> getSuggestions(SearchController controller) {
    final String input = controller.value.text;
    return comics
        .where((Comic comic) => comic.title.contains(input))
        .map((Comic comic) => ListTile(
              title: Text(comic.title),
              onTap: () {
                selectedComic = comic;
                controller.text = comic.title;
                controller.selection =
                    TextSelection.collapsed(offset: controller.text.length);
              },
            ));
  }

  void handleSelection(Comic selectedComic) {
    setState(() {
      this.selectedComic = selectedComic;
    });
  }

  @override
  void initState() {
    super.initState();
    fetchComics();
  }

  Future<void> fetchComics() async {
    final List<Comic> fetchedComics = await Comic.fetchComics();
    setState(() {
      comics = fetchedComics;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SearchAnchor.bar(suggestionsBuilder:
          (BuildContext context, SearchController controller) {
        return controller.value.text.isEmpty
            ? getComicList(controller)
            : getSuggestions(controller);
      }),
    );
  }
}
