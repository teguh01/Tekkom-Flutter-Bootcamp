import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Flow Control dan Button",
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int umur;
  String teks = "";
  String kondisi = "";

  TextEditingController controller = TextEditingController();

  final GlobalKey<ScaffoldState> _scaffoldState = GlobalKey<ScaffoldState>();

  void umurManusia(){
    if(teks == "12"){
      kondisi = "anak-anak";
    }
    else{
      kondisi = "masukan input umur yang benar";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldState,
      appBar: AppBar(
        title: Text("Flow Control"),
        backgroundColor: Colors.purple,
      ),

      body: Container(
        child: Column(
          children: <Widget>[
            TextFormField(
              controller: controller,
              decoration: InputDecoration(
                hintText: "Tulis disini",
              ),
            ),
            Container(
              alignment: Alignment.centerRight,
              child: MaterialButton(
                onPressed: (){
                  setState(() {
                    teks = controller.text;
                    umurManusia();
                  });
                },
                child: Text('Submit'),
              ),
            ),
            Container(
              alignment: Alignment.bottomCenter,
              padding: EdgeInsets.only(left: 120.0),
              child: Row(
                children: <Widget>[
                  Text("Hasilnya :   " + kondisi),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

