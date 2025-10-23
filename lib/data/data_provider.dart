import 'package:flutter/material.dart';
import 'jurnal.dart';

class DataProvider extends ChangeNotifier 
{
  List<Jurnal> _jurnalTersimpan = [];

  DataProvider();

  // Method untuk menambahkan jurnal baru
  void tambahJurnal(Jurnal jurnal)
  {
    this._jurnalTersimpan.add(jurnal);
  }

  // Getter untuk data utamanya
  get jurnalTersimpan => this._jurnalTersimpan;
}