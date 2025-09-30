import 'dart:io';

void main() {

  stdout.write("정수를 입력하세요: ");
  String? input = stdin.readLineSync();

  if (input == null || input.isEmpty) {
    print("입력이 올바르지 않습니다.");
    return;
  }

  int number = int.parse(input);

  if (number < 0) {
    print("$number -> $number");
    return;
  }

  String numStr = number.toString();
  List<String> digits = numStr.split('');

  int sum = digits.map(int.parse).reduce((a, b) => a + b);

  if (digits.length == 1) {
    print("$number -> $number");
  } else {
    String expression = digits.join("+");
    print("$number -> $expression = $sum");
  }
}


