import 'dart:io';

void main() {
  stdout.write("정수를 입력하세요: ");
  int n = int.parse(stdin.readLineSync()!);

  if (n < 0) {
    print("$n");
  } else if (n == 0) {
    print("0");
  } else {
    int temp = n;
    List<int> digits = [];

    while (temp > 0) {
      digits.add(temp % 10);
      temp ~/= 10;
    }
    digits = digits.reversed.toList();

    int sum = digits.reduce((a, b) => a + b);

    String expr = digits.join("+");
    print("$expr=$sum");
  }
}

