import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'audio_books_screen.dart';
import 'library_screen.dart';
import 'reading_now_screen.dart';
import 'search_screen.dart';

class BookStoreScreen extends StatelessWidget {
  const BookStoreScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: CustomScrollView(
        slivers: <Widget>[
          const SliverAppBar(
            pinned: true,
            expandedHeight: 150,
            backgroundColor: Colors.white,
            actions: [
              IconButton(
                onPressed: null,
                icon: Icon(
                  Icons.person,
                  color: Colors.black,
                ),
              ),
            ],
            flexibleSpace: FlexibleSpaceBar(
              title: Align(
                alignment: Alignment.bottomCenter,
                child: Text(
                  'Book Store',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ),
          SliverFillRemaining(
            child: Column(
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        // Book store content goes here
                        Container(
                         
                        ),
                        // Additional widgets for book store content
                      ],
                    ),
                  ),
                ),
                CupertinoTabBar(
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
                    
                     if (index == 1) {
                      // Navigate to the Search screen
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const ReadNowScreen()),
                      );
                    }
                    // Handle tab selection
                    if (index == 2) {
                      // Navigate to the Library screen
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const LibraryScreen()),
                      );
                    } else if (index == 3) {
                      // Navigate to the Book Store screen
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const BookStoreScreen()),
                      );
                    } else if (index == 4) {
                      // Navigate to the Audiobooks screen
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const AudiobooksScreen()),
                      );
                    } else if (index == 5) {
                      // Navigate to the Search screen
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const SearchScreen()),
                      );
                    }
                    // Handle tab selection
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

