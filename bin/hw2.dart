import 'dart:io';

void main() {
  stdout.write("정수를 입력하세요: ");
  int n = int.parse(stdin.readLineSync()!);

  if (n < 0) {
    // 음수면 그대로 출력
    print("$n");
  } else if (n == 0) {
    // 0이면 그대로 출력
    print("0");
  } else {
    int temp = n;
    List<int> digits = [];

    // 각 자리수 분리 (역순으로 들어가므로 나중에 뒤집음)
    while (temp > 0) {
      digits.add(temp % 10);
      temp ~/= 10;
    }
    digits = digits.reversed.toList();

    int sum = digits.reduce((a, b) => a + b);

    // "1+2+3=6" 형태로 출력
    String expr = digits.join("+");
    print("$expr=$sum");
  }
}
