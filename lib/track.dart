import 'package:flutter_web/material.dart' hide Card;
import 'package:flutter_web/rendering.dart';

import "card.dart";
import "state.dart" as Focus;

class Track extends StatelessWidget {
  final Focus.Track track;

  Track({this.track});

  @override
  Widget build(BuildContext context) {
    // For some reason this Align is required to make the Container wrap children
    // instead of expanding to fill all available height. :shrugging-man:
    // Note that the `alignment` property of the Container breaks this.
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        color: Colors.grey[300],
        margin: const EdgeInsets.all(15.0),
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 15.0),
              child: Text(
                this.track.title,
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: "Sans-serif",
                ),
              ),
            ),
            Flexible(
              child: ListView(
                shrinkWrap: true,
                children: [
                  for (var card in track.cards) Card(card: card),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 15.0),
              child: Text(
                "Add Card",
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: "Sans-serif",
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
