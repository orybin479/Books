import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'audio_books_screen.dart';
import 'book_store_screen.dart';
import 'library_screen.dart';
import 'reading_now_screen.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: CustomScrollView(
        slivers: <Widget>[
          const CupertinoSliverNavigationBar(
            largeTitle: Text(
              'Search',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: CupertinoColors.black,
              ),
            ),
            trailing: CupertinoButton(
              onPressed: null,
              child: Icon(
                CupertinoIcons.person,
                color: CupertinoColors.black,
              ),
            ),
            backgroundColor: CupertinoColors.white,
          ),
          SliverFillRemaining(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8.0),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.3),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: const Offset(0, 2),
                          )
                        ],
                      ),
                      child: const TextField(
                        decoration: InputDecoration(
                          hintText: 'Search...',
                          contentPadding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
                          border: InputBorder.none,
                          prefixIcon: Icon(Icons.search),
                        ),
                      ),
                    ),
                  ),
                  // Additional widgets for search content
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
              // Handle tab selection
              if (index == 0) {
                // Navigate to the Read Now screen
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ReadNowScreen()),
                );
              } else if (index == 1) {
                // Navigate to the Library screen
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const LibraryScreen()),
                );
              } else if (index == 2) {
                // Navigate to the Book Store screen
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const BookStoreScreen()),
                );
              } else if (index == 3) {
                // Navigate to the Audiobooks screen
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const AudiobooksScreen()),
                );
              } else if (index == 4) {
                // Navigate to the Search screen
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SearchScreen()),
                );
              }
            },
          ),
        ],
      ),
    );
  }
}
