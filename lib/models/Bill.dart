
// купюра (количество, достоинство)
class Bill {
  int count;
  double denomination;
  Bill({this.count, this.denomination});
  String get i => '$count X ${denomination.toInt()} рублей';
}