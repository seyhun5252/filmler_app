// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:filmler_app/data/entity/filmler.dart';

class DetaySayfa extends StatefulWidget {
  Filmler filmler;
  DetaySayfa({
    Key? key,
    required this.filmler,
  }) : super(key: key);

  @override
  State<DetaySayfa> createState() => _DetaySayfaState();
}

class _DetaySayfaState extends State<DetaySayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Detay Sayfa"),
      ),
      body: Center(
        child: Column(
          children: [
            Image.asset("resimler/${widget.filmler.resim}"),
            Text(
              "${widget.filmler.fiyat}",
              style: const TextStyle(fontSize: 50),
            ),
          ],
        ),
      ),
    );
  }
}
