/*
  1) 반환형은 int
  2) (positional parameter, named parameter, optional parameter)
  3) 내부 print문은 짝수, 홀수
 */

int addNumbers1(int a, {required int b, int c = 16}) {
  int res1= a + b + c;
  if(res1 % 2 == 0) {
    print('$a + $b + $c = 짝수');
  } else {
    print('$a + $b + $c = 홀수');
  }
  return res1;
}

void main() {
  int result1 = addNumbers1(10, b: 23, c: 8);
  print('반환값: $result1');

  int result2 = addNumbers1(16, b: 7);
  print('반환값: $result2');

  int result3 = addNumbers1(3, c: 20, b: 14);
  print('반환값: $result3');
}