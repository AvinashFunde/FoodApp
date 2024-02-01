import 'package:flutter/material.dart';

class Favorite extends StatefulWidget {
  Favorite({super.key});

  @override
  State<Favorite> createState() => _FavoriteState();
}

class _FavoriteState extends State<Favorite> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [Center(child: Text("favorite"))],
      ),
    );
  }
}
