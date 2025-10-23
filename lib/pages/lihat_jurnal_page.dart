import 'package:flutter/material.dart';
import 'package:mydj/data/data_provider.dart';
import 'package:provider/provider.dart';
import 'package:mydj/data/jurnal.dart';

class LihatJurnalPage extends StatefulWidget
{
  const LihatJurnalPage({super.key, required this.title});
  final String title;

  @override
  State<LihatJurnalPage> createState()
  {
    return _LihatJurnalPageState(); // Seperti biasa, baris ini masih error.
  }
}

class _LihatJurnalPageState extends State<LihatJurnalPage>
{
  List<Jurnal> _jurnalTersimpan = [];

  @override
  Widget build(BuildContext context)
  {
    DataProvider dp = context.read<DataProvider>();
    _jurnalTersimpan = dp.jurnalTersimpan;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            Expanded(
              child: ListView.separated( // menggunakan ListView.custom jika ingin mengubahnya
                itemBuilder: (context, index) => ListTile(
                  title: Text('${_jurnalTersimpan[index].kelas}'),
                  subtitle: Text('${_jurnalTersimpan[index].mapel}'),
                  trailing: Text('${_jurnalTersimpan[index].waktuPembuatan}'),
                  onTap: () => {},
                ), 
                separatorBuilder: (context, index) => const Divider(), 
                itemCount: _jurnalTersimpan.length,
              ),
            )
          ]
        )
      )
    );
  }
}