import 'dart:io';

double tinh_tien_kem(int so_kem, int tien_kem) {
  if (so_kem > 10) {
    return so_kem * tien_kem * 0.9;
  } else if (so_kem > 5) {
    return so_kem * tien_kem * 0.95;
  } else
    return so_kem * tien_kem * 1.0;
}

void main() {
  int so_kem, tien_kem;
  print('Nhap lan luot so kem va tien kem');
  so_kem = int.parse(stdin.readLineSync()!);
  tien_kem = int.parse(stdin.readLineSync()!);
  print('Tien kem phai tra la: ${tinh_tien_kem(so_kem, tien_kem)}');
}
