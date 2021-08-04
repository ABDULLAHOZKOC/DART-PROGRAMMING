import 'dart:io';

// Fibonacci dizisini yazacak fonksiyonu tanımlıyoruz
fibonacci(sinir) {
  var b = 1, a = 0;

  print(a);
  print(b);

  for (var i = 0; i < sinir - 2; i++) {
    var c = a + b;

    print(c);
    a = b;
    b = c;
  }
}

void main() {
  // Fibonacci fonk. kaç adet sayıyı isteyeceğiz
  print("Fibonacci dizisi için sınır giriniz: ");
  String? sinir = stdin.readLineSync();
  // Kullanıcıdan aldığımız veriyi int çeviriyoruz
  int sayi = int.parse(sinir!);

  fibonacci(sayi);
}
