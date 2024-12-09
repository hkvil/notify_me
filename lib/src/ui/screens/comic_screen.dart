import 'package:flutter/material.dart';
import 'package:notify_me/src/style.dart';

class ComicScreen extends StatelessWidget {
  const ComicScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 50, 8, 8),
      child: Column(
        children: <Widget>[
          Container(
            width: 120,
            height: 150,
            child: Image.asset(
              'assets/images/cover/one-punch-man.jpeg',
              fit: BoxFit.fill,
            ),
          ),
          Text(
            'One Punch Man',
            style: titleTextStyle,
          ),
          Spacer(
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
                  Text('Last Chapter'),
                  Text(
                    ':',
                    textAlign: TextAlign.end,
                  ),
                  Text('150', textAlign: TextAlign.center),
                ],
              ),
              TableRow(
                children: [
                  Text('Read Chapter'),
                  Text(
                    ':',
                    textAlign: TextAlign.end,
                  ),
                  Text(
                    '149',
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ],
          ),
          Spacer(
            flex: 1,
          ),
          LinearProgressIndicator(
            value: 0.59,
            minHeight: 15,
            semanticsLabel: 'Semantics Label',
            semanticsValue: 'Semantics Value',
          ),
          Spacer(
            flex: 3,
          ),
          ElevatedButton.icon(
            onPressed: () {
              print('Subsribe Pressed');
            },
            icon: Icon(Icons.notifications_none),
            label: Text('Subscribe'),
          )
        ],
      ),
    );
  }
}
