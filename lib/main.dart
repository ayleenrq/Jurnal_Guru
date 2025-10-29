import 'package:flutter/material.dart';
import 'package:mydj/data/data_provider.dart';
import 'package:mydj/pages/simple_home_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => DataProvider(),
      child: const MyApp(),
    )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'MyDJ',

        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 255, 137, 137)),
        ),

        home: const SimpleHomePage(title: 'Jurnal Harian Guru')
    );
  }
}