// stdin : 콘솔에 입력을 받는다
// stdout : 콘솔에 출력한다

import 'dart:io';

void main() {
  stdout.write('이름을 입력하세요 : ');
  String? name = stdin.readLineSync();
  print('입력한 이름: $name');

  stdout.write('학번을 입력하세요(숫자만) : ');
  String? num = stdin.readLineSync();
  int stNum = int.parse(num!);
  print('학번: $stNum');

  stdout.write('두 숫자를 입력하시오(공백 구분) : ');
  String? input = stdin.readLineSync();

  List<String> val = input!.split(' ');
  int inputA = int.parse(val[0]);
  int inputB = int.parse(val[1]);

  print(inputA);
  print(inputB);

  print('합계 : ${inputA + inputB}');
}