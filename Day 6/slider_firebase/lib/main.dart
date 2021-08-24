import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';

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

  DatabaseReference keadaan = FirebaseDatabase.instance.reference().
    child('DHT').
    child('Json');

  void something(bool e){
    setState(() {
      if(e){
        keadaan.update({'mesin_1': 'on'});
        message = "On";
        val = true;
        e = true;
      }
      else{
        keadaan.update({'mesin_1': 'off'});
        message = "Off";
        val = false;
        e = false;
      }
    });
  }

  void something1(bool f){
    setState(() {
      if(f){
        keadaan.update({'mesin_2': 'on'});
        message1 = "On";
        val1 = true;
        f = true;
      }
      else{
        keadaan.update({'mesin_2': 0});
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