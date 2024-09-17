import 'package:flutter/material.dart';

class TampilData extends StatelessWidget {
  final String nama;
  final String nim;
  final int tahun;

  const TampilData({
    Key? key,
    required this.nama,
    required this.nim,
    required this.tahun,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final int umur = DateTime.now().year - tahun;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Perkenalan"),
        backgroundColor: Colors.pinkAccent, // Warna AppBar
      ),
      body: Container(
        color: Colors.pink[50], // Latar belakang form
        alignment: Alignment.center, // Untuk menempatkan form di tengah
        padding: const EdgeInsets.all(20),
        child: Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.pink[100], // Warna form
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 5,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min, // Agar kolom tidak memenuhi layar
            crossAxisAlignment: CrossAxisAlignment.center, // Pusatkan kolom
            children: [
              Text(
                "Nama saya $nama",
                textAlign: TextAlign.center, // Teks di tengah
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.pink,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                "NIM: $nim",
                textAlign: TextAlign.center, // Teks di tengah
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.pinkAccent,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                "Umur saya adalah $umur tahun",
                textAlign: TextAlign.center, // Teks di tengah
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.pink,
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.pinkAccent, // Warna tombol
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20, vertical: 15), // Padding tombol
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10), // Rounded corner
                  ),
                ),
                child: const Text(
                  "Kembali",
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: TampilData(nama: "John Doe", nim: "123456", tahun: 2000),
  ));
}

