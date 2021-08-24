import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: HalSatu(),
    title: "Navigasi",
    routes: <String, WidgetBuilder>{
      '/Halsatu' : (BuildContext context) => HalSatu(),
      '/Haldua' : (BuildContext context) => HalDua(),
    },
  ));
}

class HalSatu extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text("Music"),),
      body: Center(
        child: IconButton(
          icon: Icon(Icons.headset, size: 50.0),
          onPressed: (){
            Navigator.pushNamed(context, '/Haldua');
          },
        ),
      ),
    );
  }
}

class HalDua extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text("Speaker"),),
      body: Center(
        child: IconButton(
          icon: Icon(Icons.speaker, size: 50.0, color: Colors.red),
          onPressed: (){
            Navigator.pushNamed(context, '/Halsatu');
          }
        ),
      ),
    );
  }
}