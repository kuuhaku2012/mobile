import 'package:flutter/material.dart';

class Bai4 extends StatelessWidget {
  const Bai4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Bài tập 04")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _item("Mã nhóm:", "N01"),
            _item("Tên nhóm:", "Nhóm Flutter"),
            _item("Số thành viên:", "3"),
            const Divider(),
            _member("2001", "Nguyễn Văn A", "Nhóm trưởng"),
            _member("2002", "Trần Thị B", "Thành viên"),
            _member("2003", "Lê Văn C", "Thành viên"),
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

  Widget _member(String mssv, String name, String role) {
    return Card(
      child: ListTile(
        title: Text(name),
        subtitle: Text("MSSV: $mssv"),
        trailing: Text(role),
      ),
    );
  }
}
