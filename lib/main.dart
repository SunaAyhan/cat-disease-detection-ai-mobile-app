import 'package:cevd_vet/homepage.dart';
import 'package:cevd_vet/mesaj.dart';
import 'package:cevd_vet/tarama.dart';
import 'package:cevd_vet/videoArama.dart';
import 'package:flutter/material.dart';
import 'dart:io';

import 'musaitVet.dart';

void main() {
  // ignore: unnecessary_new
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    home: Anasayfa(),
  ));
}

class Anasayfa extends StatefulWidget {
  const Anasayfa({Key? key}) : super(key: key);

  @override
  _AnasayfaState createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  int _aktifSayfaNo = 0;
  late PageController sayfaKumandasi;
  @override
  void initState() {
    super.initState();
    sayfaKumandasi = PageController();
  }

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
      body: Stack(children: [
        Container(),
        PageView(
          onPageChanged: (acilanSayfaNo) {
            setState(() {
              _aktifSayfaNo = acilanSayfaNo;
            });
          },
          controller: sayfaKumandasi,
          children: [MyApp(), Tarama(), MusaitVet()],
        ),
      ]),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xff0032a1),
        currentIndex: _aktifSayfaNo,
        selectedItemColor: Theme.of(context).primaryColor,
        unselectedItemColor: Colors.white,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.camera_alt), label: "Scan"),
          BottomNavigationBarItem(
              icon: Icon(Icons.medication), label: "Find a Veterinarian")
        ],
        onTap: (secilenSayfaNo) {
          setState(() {
            sayfaKumandasi.jumpToPage(secilenSayfaNo);
          });
        },
      ),
    );
  }
}
