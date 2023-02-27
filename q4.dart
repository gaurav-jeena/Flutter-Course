//find the misssing number
void main() {
  var li = [1, 2, 4, 5, 6];
  var count = new List.filled(li.length + 1, 0);
  for (int i = 0; i < li.length; i++) {
    count[li[i] - 1]++;
  }
  for (int i = 0; i < count.length; i++) {
    if (count[i] == 0) print(i + 1);
  }
}

/* Efficient solution with constant space complexity
void main() {
  var li = [1, 2, 4, 3, 6];
  int n = li.length + 2;
  int totalSum = n * (n - 1) ~/ 2;
  int sum = 0;
  for (int i = 0; i < n - 2; i++) {
    sum = sum + li[i];
  }
  print(totalSum - sum);
}
*/