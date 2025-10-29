import 'package:flutter/material.dart';
import 'package:mydj/data/jurnal.dart';

class LihatDetailJurnalPage extends StatefulWidget {
  const LihatDetailJurnalPage({
    super.key,
    required this.title,
    required this.jurnal,
  });

  final String title;
  final Jurnal jurnal; // terima objek Jurnal lewat konstruktor

  @override
  State<LihatDetailJurnalPage> createState() => _LihatDetailJurnalPageState();
}

class _LihatDetailJurnalPageState extends State<LihatDetailJurnalPage> {
  @override
  Widget build(BuildContext context) {
    // akses jurnal melalui widget.jurnal
    final j = widget.jurnal;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: SingleChildScrollView( // agar aman untuk layar kecil
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text(
                  'Detail Jurnal',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 16),

              Text('Kelas: ${j.kelas}', style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              const SizedBox(height: 10),

              Text('Mata Pelajaran: ${j.mapel}', style: const TextStyle(fontSize: 16)),
              const SizedBox(height: 10),

              Text('Jam Ke: ${j.jamKe}', style: const TextStyle(fontSize: 16)),
              const SizedBox(height: 16),

              const Text('Tujuan Pembelajaran:', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              const SizedBox(height: 6),
              Text(j.tujuanPembelajaran, style: const TextStyle(fontSize: 16)),
              const SizedBox(height: 16),

              const Text('Materi Topik:', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              const SizedBox(height: 6),
              Text(j.materiTopik, style: const TextStyle(fontSize: 16)),
              const SizedBox(height: 16),

              Text('Waktu Pembuatan: ${j.waktuPembuatan.toString()}', style: const TextStyle(fontSize: 14)),
            ],
          ),
        ),
      ),
    );
  }
}
