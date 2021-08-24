import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Kontrol(),
));

class Kontrol extends StatefulWidget {

  Kontrol({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _KontrolState createState() => _KontrolState();
}

class _KontrolState extends State<Kontrol> {

  void something(bool e){
    setState(() {
      if(e){
        message = "On";
        val = true;
        e = true;
      }
      else{
        message = "Off";
        val = false;
        e = false;
      }
    });
  }

  void something1(bool f){
    setState(() {
      if(f){
        message1 = "On";
        val1 = true;
        f = true;
      }
      else{
        message1 = "Off";
        val1 = false;
        f = false;
      }
    });
  }

  bool val = false;
  String message = "Off";

  bool val1 = false;
  String message1 = "Off";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Slider")
      ),
      body: Container(
        padding: EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  ButtonBar(
                    children: <Widget>[
                      Text("MESIN 1",),
                      Text(message),
                      Switch(
                        value: val, 
                        onChanged: (bool e) => something(e),
                        activeColor: Colors.green,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[    
                  ButtonBar(
                    children: <Widget>[
                      Text("MESIN 2",),
                      Text(message1),
                      Switch(
                        value: val1, 
                        onChanged: (bool f) => something1(f),
                        activeColor: Colors.green,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}