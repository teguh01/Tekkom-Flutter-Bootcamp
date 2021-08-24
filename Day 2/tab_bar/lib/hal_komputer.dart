import 'package:flutter/material.dart';

class Komputer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Padding(padding: EdgeInsets.all(20.0),),
          Text("Komputer", style: TextStyle(fontSize: 30.0),),
          Padding(padding: EdgeInsets.all(20.0),),
          Icon(Icons.computer, size: 90.0),
        ],
      ),
    );
  }
}
