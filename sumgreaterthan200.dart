void main() {
  int sum = 0;
  List<int> l = [300, 400, 50, 20, 1000, 30];
  l.where((e) => e > 200).forEach((e) => sum += e);
  print("sum:${sum}");
}
