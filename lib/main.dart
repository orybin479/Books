import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import 'widgets/cupertino_tab_scaffold.dart';
import 'widgets/sliver_app_bar.dart';

void main() {
  runApp(const BookApp());
}

class BookApp extends StatelessWidget {
  const BookApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const CupertinoPageScaffold(
        child: CustomScrollView(
          slivers: <Widget>[
            CustomSliverAppBar(),
            SliverFillRemaining(
              child: CustomTabScaffold(),
            ),
          ],
        ),
      ),
    );
  }
}
