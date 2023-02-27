//print number in digit form
import 'dart:io';

void main() {
  int num = int.parse(stdin.readLineSync()!);
  int temp = num, digitCount = 1;
  while (num > 0) {
    num = num ~/ 10;
    digitCount = digitCount * 10;
  }
  digitCount = digitCount ~/ 10;
  while (digitCount > 0) {
    int digit = temp ~/ digitCount;
    print(digit);
    temp = temp % digitCount;
    digitCount = digitCount ~/ 10;
  }
}
