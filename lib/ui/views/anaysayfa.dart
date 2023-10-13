import 'package:filmler_app/data/entity/filmler.dart';
import 'package:filmler_app/ui/views/detay_sayfa.dart';
import 'package:flutter/material.dart';

class AnaSayfa extends StatefulWidget {
  const AnaSayfa({super.key});

  @override
  State<AnaSayfa> createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
  Future<List<Filmler>> filmleriukle() async {
    var filmlerlistesi = <Filmler>[];

    var f1 = Filmler(id: 1, ad: "Django", resim: "django.png", fiyat: 24);

    var f2 = Filmler(
        id: 2, ad: "Interstellar", resim: "interstellar.png", fiyat: 32);

    var f3 = Filmler(id: 3, ad: "Inception", resim: "inception.png", fiyat: 16);

    var f4 = Filmler(
        id: 4,
        ad: "The Hateful Eight",
        resim: "thehatefuleight.png",
        fiyat: 28);

    var f5 =
        Filmler(id: 5, ad: "The Pianist", resim: "thepianist.png", fiyat: 18);

    var f6 = Filmler(id: 6, ad: "Anadoluda", resim: "anadoluda.png", fiyat: 10);

    filmlerlistesi.add(f1);

    filmlerlistesi.add(f2);

    filmlerlistesi.add(f3);

    filmlerlistesi.add(f4);

    filmlerlistesi.add(f5);

    filmlerlistesi.add(f6);

    return filmlerlistesi;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Filmeler"),
      ),
      body: FutureBuilder<List<Filmler>>(
        future: filmleriukle(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            var filmlerListesi = snapshot.data;

            return GridView.builder(
              itemCount: filmlerListesi!.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 1 / 1.8,
              ),
              itemBuilder: (context, index) {
                var film = filmlerListesi[index];
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetaySayfa(filmler: film),
                      ),
                    );
                  },
                  child: Card(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset("resimler/${film.resim}"),
                        Row(
                          children: [
                            Text(
                              "${film.fiyat} ₺",
                              style: const TextStyle(fontSize: 24),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        DetaySayfa(filmler: film),
                                  ),
                                );
                              },
                              child: const Text("Sepet"),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          } else {
            return const Center();
          }
        },
      ),
    );
  }
}
