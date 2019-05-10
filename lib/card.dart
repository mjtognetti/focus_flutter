import 'package:flutter_web/material.dart';

import "state.dart" as Focus;

class Card extends StatelessWidget {
  final Focus.Card card;

  Card({this.card});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      color: Colors.white,
      child: Center(
        child: Text(
          this.card.title,
          style: TextStyle(fontFamily: 'Sans-serif'),
        ),
      ),
    );
  }
}
