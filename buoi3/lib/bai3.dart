import 'package:flutter/material.dart';

class Bai3 extends StatelessWidget {
  const Bai3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Bài tập 03")),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                Icon(Icons.phone_android, size: 60),
                Icon(Icons.phone_android, size: 60),
                Icon(Icons.phone_android, size: 60),
              ],
            ),
            const SizedBox(height: 20),
            _item("Mã sản phẩm:", "SP001"),
            _item("Tên sản phẩm:", "Điện thoại Android"),
            _item("Nhà sản xuất:", "Samsung"),
            _item("Giá bán:", "15.000.000 VNĐ"),
            _item(
              "Mô tả:",
              "Điện thoại cấu hình mạnh, pin bền, phù hợp học tập",
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: const Text("Trở về"),
            )
          ],
        ),
      ),
    );
  }

  Widget _item(String title, String content) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Text(
        "$title $content",
        style: const TextStyle(fontSize: 18),
      ),
    );
  }
}
