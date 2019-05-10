import 'package:flutter_web/material.dart';

class Board extends StatelessWidget {
  final List<Widget> tracks;

  Board({this.tracks});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue[700],
      // TODO: We use this SingleChildScrollView to prevent the track columns
      // from always filling the full height of the board - we want them to wrap
      // their content if the total height of their content is less than the
      // height of the board.
      // There must be a better way to do this at the track level.
      child: ListView(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        children: [
          for (var track in this.tracks)
            Container(
              width: 300,
              child: track,
            ),
        ],
      ),
    );
  }
}
