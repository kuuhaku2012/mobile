import 'dart:io';
import 'dart:math';

bool checkNguyenTo(int a) {
  if (a < 2) return false;
  for (int i = 2; i <= sqrt(a); i++) {
    if (a % i == 0) return false;
  }
  return true;
}

void xuatMang(List<int> mang, int n) {
  for (int x in mang) {
    print('$x ');
  }
}

void xuatNguyenTo(List<int> mang, int n) {
  for (int x in mang) {
    if (checkNguyenTo(x)) print(x);
  }
}

void checkTonTai(List<int> mang, int n, int x) {
  int ixd = mang.indexOf(x);
  if (ixd != -1) {
    print('Vi tri cua so can tim: $ixd');
  } else {
    print('So khong ton tai trong mang!');
    mang.insert(0, x);
  }
}

void main() {
  int n, tong = 0, so, x;
  print('nhap so phan tu trong mang: ');
  n = int.parse(stdin.readLineSync()!);
  List<int> mang = [];
  for (int i = 0; i < n; i++) {
    print('nhap phan tu thu $i:');
    so = int.parse(stdin.readLineSync()!);
    mang.add(so);
    tong = tong + so;
  }
  print('Danh sach vua nhap la: ');
  xuatMang(mang, n);
  print('Tong cac phan tu bang: $tong');
  print('Cac phan tu la so nguyen to la: ');
  xuatNguyenTo(mang, n);
  print('Nhap vao 1 so bat ky: ');
  x = int.parse(stdin.readLineSync()!);
  checkTonTai(mang, n, x);
  xuatMang(mang, n);
}
