import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Card dan Parsing",
    home: HalSatu(),
  ));
}

class HalSatu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Card and Parsing")),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            CardSaya(icon: Icons.home, teks: "Home", warnaIcon: Colors.brown,),
            CardSaya(icon: Icons.favorite, teks: "Favorite", warnaIcon: Colors.pink,),
            CardSaya(icon: Icons.place, teks: "Place", warnaIcon: Colors.blue,),
            CardSaya(icon: Icons.settings, teks: "Setting", warnaIcon: Colors.black,),
          ]
        ),
      ),
    );
  }
}

class CardSaya extends StatelessWidget {

  CardSaya({this.icon,this.teks,this.warnaIcon});
  
  final IconData icon;
  final String teks;
  final Color warnaIcon;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      child: Card(
        child: Column(
          children: <Widget>[
            Icon(icon, size: 50.0, color: warnaIcon),
            Text(teks, style: TextStyle(fontSize: 20.0)),
          ]
        )
      ),
    );
  }
}
