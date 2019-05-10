import 'package:flutter_web/material.dart';

class Track extends StatelessWidget {
  final String title;

  Track({this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Expanded(
            child: Container(
                color: Colors.grey[200],
                child: Column(mainAxisSize: MainAxisSize.min, children: [
                  Container(
                    child: Text(this.title),
                  ),
                  Flexible(
                      child: ListView(
                    padding: const EdgeInsets.all(8.0),
                    children: [
                      Container(
                        height: 50,
                        child: Card(
                          color: Colors.amber[600],
                          child: const Center(
                            child: Text('Entry A'),
                          ),
                        ),
                      ),
                      Container(
                        height: 50,
                        child: Card(
                          color: Colors.amber[600],
                          child: const Center(
                            child: Text('Entry B'),
                          ),
                        ),
                      ),
                      Container(
                          height: 50,
                          child: Card(
                            color: Colors.amber[600],
                            child: const Center(
                              child: Text('Entry C'),
                            ),
                          )),
                    ],
                  ))
                ])))
      ],
    );
  }
}
