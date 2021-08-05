import 'dart:io';

main() {
  print(""" 
Toplama : 1
Çıkarma : 2
Çarpma  : 3
Bölme   : 4

Yapmak istedğiniz işlemin karşısındaki sayı değerini giriniz: """);
  // Kullanıcıdan yapmak istediği işlemi istiyoruz.
  String? transactions = stdin.readLineSync();
  // if - else yapısı ile  istediği işleme göre değerler istiyoruz
  if (transactions == "1") {
    print("Toplama işlemi için ilk değeri giriniz: ");
    String? firstValue = stdin.readLineSync();

    print("Toplama işlemi için ikinci değeri giriniz: ");
    String? secondValue = stdin.readLineSync();

    Calculator calc =
        Calculator(double.parse(firstValue!), double.parse(secondValue!));

    calc.add();
  } else if (transactions == "2") {
    print("Çıkarma işlemi için ilk değeri giriniz: ");
    String? firstValue = stdin.readLineSync();

    print("Çıkarma işlemi için ikinci değeri giriniz: ");
    String? secondValue = stdin.readLineSync();

    Calculator calc =
        Calculator(double.parse(firstValue!), double.parse(secondValue!));

    calc.minus();
  } else if (transactions == "3") {
    print("Çarpma işlemi için ilk değeri giriniz: ");
    String? firstValue = stdin.readLineSync();

    print("Çarpma işlemi için ikinci değeri giriniz: ");
    String? secondValue = stdin.readLineSync();

    Calculator calc =
        Calculator(double.parse(firstValue!), double.parse(secondValue!));

    calc.multiply();
  } else if (transactions == "4") {
    while (true) {
      print("Bölme işlemi için ilk değeri giriniz: ");
      String? firstValue = stdin.readLineSync();

      print("Bölme işlemi için ikinci değeri giriniz: ");
      String? secondValue = stdin.readLineSync();

      if (secondValue == "0") {
        print("İkinci değeri sıfır giremezsiniz!!!");
        continue;
      } else {
        Calculator calc =
            Calculator(double.parse(firstValue!), double.parse(secondValue!));

        calc.dividedBy();
        break;
      }
    }
  } else {
    print("Geçerli işlem giriniz");
  }
}

class Calculator {
  double firstValue, secondValue;

  Calculator(this.firstValue, this.secondValue);

  add() {
    double result = this.firstValue + this.secondValue;
    print(result);
  }

  multiply() {
    double result = this.firstValue * this.secondValue;

    print(result);
  }

  dividedBy() {
    double result = this.firstValue / this.secondValue;

    print(result);
  }

  minus() {
    double result = this.firstValue - this.secondValue;

    print(result);
  }
}
