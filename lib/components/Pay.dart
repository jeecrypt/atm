import '../models/Bill.dart';

class Pay{

  List<Bill> bill = []; // массив купюр банкомата

  // добавляем купюры в банкомат
  set add(Bill bill){
    this.bill.add(bill);
  }

  // баланс банкомата
  get balance => bill;

  double get sum => bill.fold(0, (previous, current) => previous + (current.denomination * current.count)); // вся сумма хранимая в банкомате

  // провкрка наличия всех необходимых купюр для выдачи полной суммы
  double calculate(double c){
    bill.map((e){
      while(c >= e.denomination && e.count > 0) {
        c -= e.denomination;
      }
    }).toList();
    return c;
  }
  
  // Выдача денег
  List<Bill> pay(double c){
    if(calculate(c) != 0 || sum < c) return null; // если в наличии нет всех необходимых купюр, или сумма превышает наличие - не выдаем деньги
    bill.sort((a, b) => b.denomination.compareTo(a.denomination)); // сортируем купюры по убыванию достоинства
    return bill.map((e){
      Bill _bill = Bill(count: 0, denomination: e.denomination); // купюра к выдаче
      while(c >= e.denomination && e.count > 0) {
        c -= e.denomination; // вычитаем достоинство купюры из оставщейся для выдачи суммы
        e.count--; // убираем купюру с баланса банкомата
        _bill.count++; // добавляем купюру к выдаваемым
      }
      return _bill;
    }).toList();
  }
}