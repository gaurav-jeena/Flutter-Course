void main(List<String> args) {
  var sum = 0;
  var list = [1, 2, 3, 4, 5, 8, 9];

  list.forEach((e) => sum += e);

  print("Sum : ${sum}");
}
