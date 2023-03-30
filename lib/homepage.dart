import 'dart:io';

import 'package:agora_uikit/agora_uikit.dart';
import 'package:cevd_vet/musaitVet.dart';
import 'package:cevd_vet/tarama.dart';
import 'package:cevd_vet/videoArama.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  @override
  _State createState() => new _State();
}

class _State extends State<MyApp> {
  int _aktifSayfaNo = 0;
  File? imageURI;
  List? result;
  late String path;
  @override
  Widget build(BuildContext context) {
    final double genislik = MediaQuery.of(context).size.width;
    final double yukseklik = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
          decoration: BoxDecoration(),
          child: new Column(children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Text(" Hi Suna, is there a problem?",
                  style: TextStyle(fontSize: 21)),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xff0032a1),
                ),
                padding: EdgeInsets.all(40),
                margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: MaterialButton(
                    height: 50,
                    minWidth: genislik * 0.4,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Tarama()),
                      );
                    },
                    child: Text('Scan Your Pet'),
                    textColor: Colors.white,
                    padding: EdgeInsets.fromLTRB(12, 12, 12, 12),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ))),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xff0032a1),
                  ),
                  padding: EdgeInsets.all(40),
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: MaterialButton(
                      height: 50,
                      minWidth: genislik * 0.4,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => MusaitVet()),
                        );
                      },
                      child: Text('Call a veterinarian'),
                      textColor: Colors.white,
                      padding: EdgeInsets.fromLTRB(12, 12, 12, 12),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ))),
            ),
          ])),
    );
  }
}
