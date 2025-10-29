import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class TentangAplikasiPage extends StatelessWidget {
  const TentangAplikasiPage({super.key, required this.title});
  final String title;

  // Fungsi untuk membuka link website
  void _bukaWebsite() async {
    final Uri url = Uri.parse('https://github.com/ayleenrq');
    if (!await launchUrl(url, mode: LaunchMode.externalApplication)) {
      throw 'Tidak dapat membuka $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple.shade50, // Warna lembut seperti contoh
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(title),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('MyDJ',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),

              SizedBox(height: 8),

              Text('Aplikasi Jurnal Harian Guru',
                style: TextStyle(
                  fontSize: 18,
                  fontStyle: FontStyle.italic,
                ),
              ),
              
              SizedBox(height: 12),

              Text('Version: 0.1 (Beta)',
                style: TextStyle(fontSize: 14),
              ),

              SizedBox(height: 8),

              Text('Dibuat oleh:',
                style: TextStyle(fontSize: 14),
              ),

              SizedBox(height: 4),

              Text('Ayleen Ruhul Qisthy',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),

              SizedBox(height: 8),

              GestureDetector(
                onTap: _bukaWebsite,
                child: Text(
                  'https://github.com/ayleenrq',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.blue,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
