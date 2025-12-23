/*
  1) 반환형은 int
  2) (positional parameter, named parameter, optional parameter)
  3) 내부 print문은 짝수, 홀수
 */

int addNumbers(int a, {required int b, int c = 16})  => a + b + c;

int addNumbers2(int a, {required int b, int c = 16})  => a + b + c;

void main() {
  int result1 = addNumbers(10, b: 23, c: 8);
  print('반환값: $result1');

  int result2 = addNumbers(17, b: 26);
  print('반환값: $result2');

  int result3 = addNumbers(8, c: 19, b: 3);
  print('반환값: $result3');
}