import 'package:flutter/material.dart';
import 'package:flutter_application_1/Dashboard.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var judul = "OLASAM";
  var body = "Kelola Sampahmu Disini!";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(children: [
          ListTile(
            title: Text("Dashboard"),
            leading: Icon(Icons.adjust),
          ),
          ListTile(
            title: Text("Data Pelanggan"),
            leading: Icon(Icons.adjust),
          ),
          ListTile(
            title: Text("Tagihan"),
            leading: Icon(Icons.adjust),
          )
        ]),
      ),
      appBar: AppBar(
        title: Text(judul),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        setState(() {
          judul = "Login";
          body = "Kelola Sampahmu Disini!";
        });
        Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => const MyApp()));
      }),
      body: Text("Kelola Sampahmu Disini!"),
    );
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => MyApp()));
  }
}
