//rotate a number with rotations
import 'dart:math';

void main() {
  int num = 123456;
  int rotation = 2, temp = num, count = 0;
  while (num > 0) {
    num = num ~/ 10;
    count++;
  }
  var right = (temp ~/ pow(10, rotation));
  var left = (temp % pow(10, rotation)) * pow(10, count - rotation);
  print(left + right);
}
