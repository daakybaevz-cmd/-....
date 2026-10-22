import 'dart:io';

void main() {
  double balance = 1000.0; 

  while (true) {
    
    
    print('1. Проверить баланс');
    print('2. Снять наличные');
    print('3. Пополнить счет');
    print('4. Выход');
    stdout.write('Выберите пункт меню (1-4): ');

    
    String? input = stdin.readLineSync();

    
    int? choice = int.tryParse(input ?? '');
    if (choice == null) {
      print(' Ошибка! Пожалуйста, введите цифру от 1 до 4, а не буквы.');
      continue; 
    }

    
    switch (choice) {
      case 1:
        print(' Ваш текущий баланс: $balance руб.');
        break;

      case 2:
        stdout.write('Введите сумму для снятия: ');
        String? amountInput = stdin.readLineSync();
        double? amount = double.tryParse(amountInput ?? '');

        if (amount != null && amount > 0 && amount <= balance) {
          balance -= amount;
          print(' Успешно! Вы сняли $amount руб. Остаток: $balance руб.');
        } else {
          print(' Ошибка: неверная сумма или недостаточно средств.');
        }
        break;

      case 3:
        stdout.write('Введите сумму для пополнения: ');
        String? amountInput = stdin.readLineSync();
        double? amount = double.tryParse(amountInput ?? '');

        if (amount != null && amount > 0) {
          balance += amount;
          print(' Счет пополнен на $amount руб. Новый баланс: $balance руб.');
        } else {
          print(' Ошибка: введите положительное число.');
        }
        break;

      case 4:
        print(' Спасибо за использование нашего банкомата! До свидания.');
        return; 

      default:
        print(' Такого пункта меню нет. Пожалуйста, выберите от 1 до 4.');
    }
  }
}



Бесконечный цикл While(true) постоянно показывает меню занова после выбора действия.
int.tryParse и countinue защищают программу от сбоев, если ввести в программу букву а не цифру.
оператор switch распределяет действия в зависимости от выбранного пункта. 
а return полностью завершает программу 
