import 'package:filmler_app/data/entity/filmler.dart';
import 'package:filmler_app/ui/views/anaysayfa.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Future<List<Filmler>> filmleriukle() async {
      var filmlerlistesi = <Filmler>[];

      var f1 = Filmler(id: 1, ad: "Django", resim: "django.png", fiyat: 24);

      var f2 = Filmler(
          id: 2, ad: "Interstellar", resim: "interstellar.png", fiyat: 32);

      var f3 =
          Filmler(id: 3, ad: "Inception", resim: "inception.png", fiyat: 16);

      var f4 = Filmler(
          id: 4,
          ad: "The Hateful Eight",
          resim: "thehatefuleight.png",
          fiyat: 28);

      var f5 =
          Filmler(id: 5, ad: "The Pianist", resim: "thepianist.png", fiyat: 18);

      var f6 =
          Filmler(id: 6, ad: "Anadoluda", resim: "anadoluda.png", fiyat: 10);

      filmlerlistesi.add(f1);

      filmlerlistesi.add(f2);

      filmlerlistesi.add(f3);

      filmlerlistesi.add(f4);

      filmlerlistesi.add(f5);

      filmlerlistesi.add(f6);

      return filmlerlistesi;
    }

    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const AnaSayfa(),
    );
  }
}
