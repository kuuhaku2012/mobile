import 'package:flutter/material.dart';

class Bai1 extends StatelessWidget {
  const Bai1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Thông tin sinh viên"),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 20),
            const CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage('assets/sinhvien.jpg'),
            ),
            const SizedBox(height: 20),
            _text("Họ và tên: Nguyễn Văn A", Colors.blue),
            _text("MSSV: 2001221234", Colors.red),
            _text("Lớp: 13DHTH02", Colors.red),
            _text("Khóa: 13 Đại học", Colors.red),
            _text("Ngành: Công nghệ thông tin", Colors.red),
            _text(
              "Trường: Đại học Công Thương TP.HCM",
              Colors.red,
            ),
            const Spacer(),
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: const Text("Trở về"),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget _text(String text, Color color) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 18,
          color: color,
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
