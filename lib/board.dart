import 'package:flutter_web/material.dart';

class Board extends StatelessWidget {
  final List<Widget> tracks;

  Board({this.tracks});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
      for (var track in this.tracks)
        Container(
          width: 300,
          child: track,
        ),
    ]));
  }
}
