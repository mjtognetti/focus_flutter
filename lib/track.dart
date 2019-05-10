import 'package:flutter_web/material.dart';

class Track extends StatelessWidget {
  final String title;

  Track({this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.grey[300],
        margin: const EdgeInsets.all(15.0),
        padding: const EdgeInsets.all(7.0),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                margin: const EdgeInsets.only(left: 15.0, top: 7.0),
                child: Text(
                  this.title,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: "Sans-serif",
                  ),
                ),
              ),
              ListView(
                shrinkWrap: true,
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
              )
            ]));
  }
}
