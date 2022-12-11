import 'package:flutter/material.dart';
import 'package:agritara/page/login.dart';
import 'package:agritara/page/halaman_petani.dart';
import 'package:agritara/page/halaman_pemerintah.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Halaman Utama',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HalamanUtama(),
    );
  }
}

class HalamanUtama extends StatefulWidget {
  const HalamanUtama({super.key});

  final String title = 'Halaman Utama';

  @override
  State<HalamanUtama> createState() => _StateHalamanUtama();
}

class _StateHalamanUtama extends State<HalamanUtama> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            ListTile(
              title: const Text('Halaman Login'),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const HalamanLogin()),
                );
              },
            ),
            ListTile(
              title: const Text('Halaman Utama'),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const HalamanUtama()),
                );
              },
            ),
            ListTile(
              title: const Text('Halaman Petani'),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const HalamanPetani()),
                );
              },
            ),
            ListTile(
              title: const Text('Halaman Pemerintah'),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const HalamanPemerintah()),
                );
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            Text('Ini halaman utama!'),
          ],
        ),
      ),
    );
  }
}