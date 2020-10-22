import 'package:flutter/material.dart';

class Roulette extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: RouletteBody(),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Save as favorite',
        child: Icon(Icons.star_border),
        onPressed: () {},
      ),
    );
  }
}

class RouletteBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
