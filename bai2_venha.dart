import 'dart:io';

void main() {
  print("Nhập chuỗi:");
  String s = stdin.readLineSync()!;

  print("Chuỗi vừa nhập: $s");

  String nguyenAm = "aeiouAEIOUáàảãạăắằẳẵặâấầẩẫậ"
      "éèẻẽẹêếềểễệ"
      "íìỉĩị"
      "óòỏõọôốồổỗộơớờởỡợ"
      "úùủũụưứừửữự"
      "ýỳỷỹỵ";

  int demNguyenAm = 0;
  for (int i = 0; i < s.length; i++) {
    if (nguyenAm.contains(s[i])) {
      demNguyenAm++;
    }
  }
  print("Số ký tự nguyên âm: $demNguyenAm");

  List<String> words =
      s.trim().split(RegExp(r'\s+'));
  int soTu = words[0].isEmpty ? 0 : words.length;
  print("Số từ trong chuỗi: $soTu");

  String sClean = s.replaceAll(" ", "").toLowerCase();
  String sDao = sClean.split('').reversed.join('');

  if (sClean == sDao) {
    print("Chuỗi là chuỗi đối xứng");
  } else {
    print("Chuỗi không đối xứng");
  }

  String chuoiDaoTu = words.reversed.join(' ');
  print("Chuỗi sau khi đảo ngược từ:");
  print(chuoiDaoTu);
}