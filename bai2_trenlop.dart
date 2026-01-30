import 'dart:io';

void main() {
  print("nhap so nguyen lon hon 10");
  int so_nguyen = int.parse(stdin.readLineSync()!);
  bool check_le = false;
  int dem = 0;
  int so, tong = 0;
  while (so_nguyen > 0) {
    so = so_nguyen % 10;
    so_nguyen = (so_nguyen ~/ 10);
    if (so % 2 != 0) {
      check_le = true;
    }
    tong = tong + so;
    dem++;
  }
  print('so vua nhap co $dem chu so');
  print('tong cac chu so co trong so nguyen vua nhan bang: $tong');
  if (check_le) {
    print('so vua nhap co chua so le');
  } else
    print('so vua nhap khong chua so le');
}
