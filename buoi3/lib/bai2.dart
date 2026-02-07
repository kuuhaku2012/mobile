import 'package:flutter/material.dart';

class Bai2 extends StatelessWidget {
  const Bai2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Bài tập 02")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _item("Mã đề tài:", "DT001"),
            _item("Tên đề tài:", "Ứng dụng quản lý sinh viên"),
            _item("Số SV tối đa:", "3"),
            _item("Chuyên ngành:", "Công nghệ phần mềm"),
            _item("GV hướng dẫn:", "ThS. Nguyễn Văn B"),
            _item(
              "Yêu cầu:",
              "Xây dựng app Flutter có giao diện và lưu trữ dữ liệu",
            ),
            const Spacer(),
            Center(
              child: ElevatedButton(
                onPressed: () => Navigator.pop(context),
                child: const Text("Trở về"),
              ),
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
