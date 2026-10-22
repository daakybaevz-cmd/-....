import 'dart:io';

void main() {
  String correctPin = '1488';
  String? enteredPin;

  do {
    print('Введите пин-код:');
    enteredPin = stdin.readLineSync();

    if (enteredPin != correctPin) {
      print('Неверный пин-код! Попробуйте снова.\n');
    }
  } while (enteredPin != correctPin); 

  print('Доступ разрешен! Сейф открыт.');
}


Цикл do while сначала запрашивает пин-код, а потом проверяет его.
Он будет повторяться до тех пор, пока введенный код не совпадает с верным.