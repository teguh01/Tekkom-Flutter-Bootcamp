import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: MyApp()
    )
  );
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Apa Kabar"),
        backgroundColor: Colors.green,
      ),
      body: Container(
        child: Row(
          children: [
            Container(
              child: Column(
                children: [
                  Text("Donat"),
                  Text("Risol"),
                ],
              )
            ),
            Container(
              child: Column(
                children: [
                  Text("Donat"),
                  Text("Risol"),
                ],
              )
            ),
          ],
        )
      )
    );
  }
}
