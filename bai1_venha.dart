import 'dart:io';
import 'dart:math';

void main() {
  Random random = Random();

  int n;
  print('Nhap so phan tu trong mang');
  n = int.parse(stdin.readLineSync()!);
  List<int> a = List.generate(n, (_) => random.nextInt(96) + 5);

  print("Danh sách vừa tạo:");
  print(a);

  int tongLe = 0;
  int demLe = 0;

  for (int x in a) {
    if (x % 2 != 0) {
      tongLe += x;
      demLe++;
    }
  }

  if (demLe == 0) {
    print("Danh sách không có số lẻ");
  } else {
    double tbLe = tongLe / demLe;
    print("Trung bình cộng các số lẻ: $tbLe");
  }

  bool doiXung = true;
  for (int i = 0; i < a.length ~/ 2; i++) {
    if (a[i] != a[a.length - 1 - i]) {
      doiXung = false;
      break;
    }
  }

  print(
    doiXung ? "Danh sách là danh sách đối xứng" : "Danh sách không đối xứng",
  );

  bool tangDan = true;
  for (int i = 0; i < a.length - 1; i++) {
    if (a[i] > a[i + 1]) {
      tangDan = false;
      break;
    }
  }

  print(
    tangDan
        ? "Danh sách đã được sắp xếp tăng dần"
        : "Danh sách chưa được sắp xếp tăng dần",
  );

  int max = a[0];
  for (int x in a) {
    if (x > max) max = x;
  }
  print("Phần tử lớn nhất trong danh sách: $max");

  int? maxChan;
  for (int x in a) {
    if (x % 2 == 0) {
      if (maxChan == null || x > maxChan!) {
        maxChan = x;
      }
    }
  }

  if (maxChan == null) {
    print("Danh sách không có số chẵn");
  } else {
    print("Số chẵn lớn nhất: $maxChan");
  }

  print("Nhập một giá trị cần tìm:");
  int x = int.parse(stdin.readLineSync()!);

  if (!a.contains(x)) {
    print("Không tìm thấy");
  } else {
    a.removeWhere((e) => e == x);
    print("Danh sách sau khi xoá $x:");
    print(a);
  }
}
