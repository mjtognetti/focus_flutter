import 'package:flutter_web/material.dart';

import 'board.dart';
import 'track.dart';
import 'state.dart' as Focus;

void main() {
  Focus.State state = initState();
  return runApp(App(state: state));
}

Focus.State initState() => Focus.State(title: "Focus Project", tracks: [
      Focus.Track(
        title: "Focus",
        cards: [
          Focus.Card(title: "Create new card"),
        ],
      ),
      Focus.Track(
        title: "Hand",
        cards: [
          Focus.Card(title: "Create new track"),
        ],
      ),
      Focus.Track(
        title: "Deck",
        cards: [
          Focus.Card(title: "Clean up styles"),
          Focus.Card(title: "Fix live reload from VS Code."),
          Focus.Card(title: "Remove cards"),
          Focus.Card(title: "Reorder cards"),
        ],
      ),
      Focus.Track(
        title: "Completed",
        cards: [
          Focus.Card(title: "Add state to widgets"),
          Focus.Card(title: "Fix board horizontal scroll."),
        ],
      ),
      Focus.Track(
        title: "Discard",
        cards: [],
      )
    ]);

class App extends StatelessWidget {
  const App({this.state});

  final Focus.State state;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Focus',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(state: this.state),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key, this.state}) : super(key: key);

  final Focus.State state;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            Text(this.state.title, style: TextStyle(fontFamily: "Sans-serif")),
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
        Expanded(
            child: Board(tracks: [
          for (var track in this.state.tracks) Track(track: track)
        ]))
      ]),
    );
  }
}
