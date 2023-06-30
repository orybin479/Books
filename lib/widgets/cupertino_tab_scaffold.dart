// tab_scaffold.dart
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../screens/audio_books_screen.dart';
import '../screens/book_store_screen.dart';
import '../screens/library_screen.dart';
import '../screens/reading_now_screen.dart';
import '../screens/search_screen.dart';


class CustomTabScaffold extends StatelessWidget {
  const CustomTabScaffold({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBuilder: (context, index) {
        switch (index) {
          case 0:
            return const ReadNowScreen();
          case 1:
            return const LibraryScreen();
          case 2:
            return const BookStoreScreen();
          case 3:
            return const AudiobooksScreen();
          case 4:
            return const SearchScreen();
          default:
            return const SizedBox();
        }
      },
      tabBar: CupertinoTabBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: 'Read Now',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.library_books),
            label: 'Library',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Book Store',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.headset),
            label: 'Audiobooks',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
        ],
        onTap: (index) {
          // Handle tab selection
          // ...
        },
      ),
    );
  }
}
