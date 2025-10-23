import 'package:flutter/material.dart';
import 'package:mydj/data/data_provider.dart';
import 'package:mydj/data/jurnal.dart';
import 'package:provider/provider.dart';

class BuatJurnalPage extends StatefulWidget {
  const BuatJurnalPage({super.key, required this.title});
  final String title;

  @override
  State<BuatJurnalPage> createState() {
    return _BuatJurnalPageState(); // Seperti biasa, baris ini masih error.
  }
}

class _BuatJurnalPageState extends State<BuatJurnalPage> {

  String kelas = '';
  String mapel = '';
  int jamKe = 0;
  String tujuanPembelajaran = '';

  void simpanJurnal(BuildContext context) {
    Jurnal j = Jurnal(
      kelas: this.kelas,
      mapel: this.mapel,
      jamKe: this.jamKe,
      tujuanPembelajaran: this.tujuanPembelajaran,
    );

    DataProvider dp = context.read<DataProvider>();
    dp.tambahJurnal(j);
  }

  Widget _textArea(String label, String info, Function(String) onChanged) {
    //component text area
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,

      children: [
        Text(label),
        SizedBox(height: 10),
        TextField(
          maxLines: 5,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: info,
          ),
          onChanged: onChanged,
        ),
      ],
    );
  }

  Widget _textField(String label, String info, Function(String) onChanged ) {
    //component text field
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,

      children: [
        Text(label),
        SizedBox(height: 10),
        TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: info,
          ),
          onChanged: onChanged,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start, // start, center, end

            children: [
              _textField('Kelas', 'Masukkan nama kelas', (value) => setState(() => kelas = value)),

              SizedBox(height: 10),

              _textField('Mata Pelajaran', 'Masukkan nama mata pelajaran', (value) => setState(() => mapel = value)),

              SizedBox(height: 10),

              Text('Jam ke-'),
              SizedBox(height: 10),
              DropdownButtonFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Pilih jam yang sesuai :',
                ),
                items: [
                  DropdownMenuItem(value: '1', child: Text('Satu')),
                  DropdownMenuItem(value: '2', child: Text('Dua')),
                  DropdownMenuItem(value: '3', child: Text('Tiga')),
                  DropdownMenuItem(value: '4', child: Text('Empat')),
                  DropdownMenuItem(value: '5', child: Text('Lima')),
                  DropdownMenuItem(value: '6', child: Text('Enam')),
                  DropdownMenuItem(value: '7', child: Text('Tujuh')),
                  DropdownMenuItem(value: '8', child: Text('Delapan')),
                ],
                onChanged: (value) => setState(() => jamKe = int.parse(value!)),
              ),

              SizedBox(height: 10),

              _textArea('Tujuan Pembelajaran', 'Masukkan tujuan pembelajaran', (value) => setState(() => tujuanPembelajaran = value)),

              SizedBox(height: 10),

              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => simpanJurnal(context),
                  child: Text('Simpan')
                ),
              )
              
            ],
          ),
        ),
      ),
    );
  }
}
