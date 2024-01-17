import 'package:flutter/material.dart';

class ScreenFavorites extends StatelessWidget {
  const ScreenFavorites({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Fav"),
      ),
      body: Center(
        child: Text("Favs"),
      ),
    );
  }
}
