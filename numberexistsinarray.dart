void main() {
  List<int> li = [100, 200, 50, 200, 40, 200];
  int result = li.fold(0, (int acc, int data) => acc + data);

//*  print(li.where((element) => element == 200).length);
}
