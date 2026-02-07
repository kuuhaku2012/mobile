import 'package:flutter/material.dart';
import 'bai1.dart';
import 'bai2.dart';
import 'bai3.dart';
import 'bai4.dart';
import 'bai5.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BÀI TẬP FLUTTER"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          _item(context, "Bài 1", const Bai1()),
          _item(context, "Bài 2", const Bai2()),
          _item(context, "Bài 3", const Bai3()),
          _item(context, "Bài 4", const Bai4()),
          _item(context, "Bài 5", const Bai5()),
        ],
      ),
    );
  }

  Widget _item(BuildContext context, String title, Widget page) {
    return Card(
      child: ListTile(
        title: Text(title),
        trailing: const Icon(Icons.arrow_forward_ios),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => page),
          );
        },
      ),
    );
  }
}
