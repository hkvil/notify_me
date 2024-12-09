import 'package:flutter/material.dart';
import 'package:notify_me/src/data/comic.dart';
import 'package:notify_me/src/style.dart';

class ComicScreen extends StatelessWidget {
  final Comic comic;
  const ComicScreen({super.key, required this.comic});

  @override
  Widget build(BuildContext context) {
    print(comic.title);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          comic.title,
          style: titleTextStyle,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(8, 50, 8, 8),
        child: Column(
          children: <Widget>[
            SizedBox(
              width: 150,
              height: 180,
              child: Image.asset(
                comic.imageUrl,
                fit: BoxFit.fill,
              ),
            ),
            Text(
              comic.title,
              style: titleTextStyle,
              textAlign: TextAlign.center,
            ),
            const Spacer(
              flex: 1,
            ),
            Table(
              columnWidths: const <int, TableColumnWidth>{
                0: FlexColumnWidth(4),
                1: FlexColumnWidth(1),
                2: FlexColumnWidth(1),
              },
              children: [
                TableRow(
                  children: [
                    Text(
                      'Last Chapter',
                      style: subtitleTextStyle,
                    ),
                    Text(
                      ':',
                      textAlign: TextAlign.end,
                      style: subtitleTextStyle,
                    ),
                    Text(
                      comic.lastChapter.toString(),
                      textAlign: TextAlign.center,
                      style: subtitleTextStyle,
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    Text(
                      'Read Chapter',
                      style: subtitleTextStyle,
                    ),
                    Text(
                      ':',
                      textAlign: TextAlign.end,
                      style: subtitleTextStyle,
                    ),
                    Text(
                      comic.readChapter.toString(),
                      textAlign: TextAlign.center,
                      style: subtitleTextStyle,
                    ),
                  ],
                ),
              ],
            ),
            const Spacer(
              flex: 1,
            ),
            LinearProgressIndicator(
              value: comic.readChapter / comic.lastChapter,
              minHeight: 15,
            ),
            const Spacer(
              flex: 3,
            ),
            ElevatedButton.icon(
              onPressed: () {
                print('Subsribe Pressed');
              },
              icon: const Icon(Icons.notifications_none),
              label: const Text(
                'Subscribe',
                style: TextStyle(fontSize: 18, fontFamily: 'Roboto'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
