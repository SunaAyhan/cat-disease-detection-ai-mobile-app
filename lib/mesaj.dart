import 'dart:io';

import 'package:agora_uikit/agora_uikit.dart';
import 'package:cevd_vet/musaitVet.dart';
import 'package:cevd_vet/tarama.dart';
import 'package:cevd_vet/videoArama.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Mesaj extends StatefulWidget {
  @override
  _State createState() => new _State();
}

class ChatMessage {
  String mesajIcerik;
  String mesajTuru;
  ChatMessage({required this.mesajIcerik, required this.mesajTuru});
}

class _State extends State<Mesaj> {
  int _aktifSayfaNo = 0;
  File? imageURI;
  List? result;
  late String path;
  List<ChatMessage> messages = [
    ChatMessage(mesajIcerik: "Hi doctor", mesajTuru: "gonderen"),
    ChatMessage(mesajIcerik: "Hello how can I help you?", mesajTuru: "alan"),
    ChatMessage(
        mesajIcerik: "My cat has acne. Can you help me?",
        mesajTuru: "gonderen"),
    ChatMessage(
        mesajIcerik: "Of course. If you call, I can help.", mesajTuru: "alan"),
    ChatMessage(mesajIcerik: "I'm calling now", mesajTuru: "gonderen"),
  ];
  @override
  Widget build(BuildContext context) {
    final double genislik = MediaQuery.of(context).size.width;
    final double yukseklik = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      // ignore: unnecessary_new
      appBar: new AppBar(
        backgroundColor: Color(0xff0032a1),
        title: const Text('Cevd-vet'),
      ),
      body: Stack(
        children: <Widget>[
          ListView.builder(
            itemCount: messages.length,
            shrinkWrap: true,
            padding: EdgeInsets.only(top: 10, bottom: 10),
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return Container(
                padding:
                    EdgeInsets.only(left: 14, right: 14, top: 10, bottom: 10),
                child: Align(
                  alignment: (messages[index].mesajTuru == "alan"
                      ? Alignment.topLeft
                      : Alignment.topRight),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: (messages[index].mesajTuru == "gonderen"
                          ? Colors.grey.shade200
                          : Colors.blue[200]),
                    ),
                    padding: EdgeInsets.all(16),
                    child: Text(
                      messages[index].mesajIcerik,
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                ),
              );
            },
          ),
          SizedBox(
            height: 100,
          ),
          Center(
            child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xff0032a1),
                ),
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.fromLTRB(0, 500, 0, 0),
                child: MaterialButton(
                    height: 20,
                    minWidth: genislik * 0.4,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => VideoArama()),
                      );
                    },
                    child: Text('Call the Vet'),
                    textColor: Colors.white,
                    padding: EdgeInsets.fromLTRB(12, 12, 12, 12),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ))),
          ),
        ],
      ),
    );
  }
}
