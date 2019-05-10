import 'package:flutter_web/material.dart';

class Board extends StatelessWidget {
  final List<Widget> tracks;

  Board({this.tracks});

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.blue[700],
        child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
          for (var track in this.tracks)
            Container(
              width: 300,
              child: track,
            ),
        ]));
  }
}
