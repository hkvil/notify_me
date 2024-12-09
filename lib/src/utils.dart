import 'package:flutter/material.dart';
import 'package:notify_me/src/data/comic.dart';
import 'package:notify_me/src/ui/screens/comic_screen.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';

void navigateToComicScreen(BuildContext context, Comic comic) {
  PersistentNavBarNavigator.pushNewScreen(
    context,
    screen: ComicScreen(comic: comic),
  );
}
