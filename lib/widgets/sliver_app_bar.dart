// sliver_app_bar.dart
import 'package:flutter/material.dart';

class CustomSliverAppBar extends StatelessWidget {
  const CustomSliverAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SliverAppBar(
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
          alignment: Alignment.bottomLeft,
          child: Text(
            'Reading Now',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
