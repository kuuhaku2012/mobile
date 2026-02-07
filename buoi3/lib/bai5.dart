import 'package:flutter/material.dart';

class Bai5 extends StatelessWidget {
  const Bai5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Bài tập 05")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              "Ngành Công nghệ Thông tin (CNTT)",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              "Đào tạo kiến thức về lập trình, phần mềm, hệ thống thông tin.",
              style: TextStyle(fontSize: 16),
            ),
            Divider(),
            Text(
              "Ngành An toàn Thông tin (ATTT)",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              "Đào tạo về bảo mật, an ninh mạng, an toàn dữ liệu.",
              style: TextStyle(fontSize: 16),
            ),
            Divider(),
            Text(
              "Khoa Công nghệ Thông tin – ĐH Công Thương TP.HCM",
              style: TextStyle(
                fontSize: 16,
                fontStyle: FontStyle.italic,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        child: Icon(Icons.school),
      ),
    );
  }
}
