import 'dart:io';

import 'package:agora_uikit/agora_uikit.dart';
import 'package:cevd_vet/musaitVet.dart';
import 'package:cevd_vet/tarama.dart';
import 'package:cevd_vet/videoArama.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'mesaj.dart';

class MusaitVet extends StatefulWidget {
  @override
  _State createState() => new _State();
}

class _State extends State<MusaitVet> {
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
        // ignore: unnecessary_new

        body: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(top: 16),
          physics: NeverScrollableScrollPhysics(),
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Mesaj()),
                );
              },
              child: Container(
                padding:
                    EdgeInsets.only(left: 16, right: 16, top: 10, bottom: 10),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Row(
                        children: <Widget>[
                          SizedBox(
                            width: 16,
                          ),
                          Expanded(
                            child: Container(
                              color: Colors.transparent,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    "Veterinarian Ömer Akgül:",
                                    style: TextStyle(fontSize: 16),
                                  ),
                                  SizedBox(
                                    height: 6,
                                  ),
                                  Text(
                                    "Of course. If you call, I can help.",
                                    style: TextStyle(
                                        fontSize: 13,
                                        color: Colors.grey.shade600,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      "5 seconds ago",
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
