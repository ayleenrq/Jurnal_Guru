import 'package:flutter/material.dart';

class AkunPage extends StatefulWidget {
  const AkunPage({super.key, required this.title});
  final String title;
  @override
  State<StatefulWidget> createState() {
    return _AkunPageState();
  }
}

class _AkunPageState extends State<AkunPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(36.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(Icons.person_2_outlined, size: 100),
              SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Username',
                ),
              ),
              SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(onPressed: () => {}, child: Text('Ubah Akun')),
            ],
          ),
        ),
      ),
    );
  }
}
