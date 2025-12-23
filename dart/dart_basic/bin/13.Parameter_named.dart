// named parameter : 변수 이름 명시하여 파라미터 순서를 제외할 수 있다.
void main() {
  addNumbers(x: 11, y: 16, z: 22);
  print('-------------------');
  addNumbers(y: 23, x: 14, z: 27);
  print('-------------------');
  addNumbers2(a: 23, c: 12);
  print('-------------------');
  addNumbers2(a: 13, b: 10, c: 9);
}

// 파라미터 넣는 데에 {}(중괄호)를 넣어주고, required를 붙여라
addNumbers({required int x, required int y, required int z}) {
  int res = x + y + z;
  if(res % 2 == 0)
    print('$x + $y + $z = 짝수');
  else
    print('$x + $y + $z = 홀수');
}

// required를 제외하면 optional parameter(값이 들어와도 되고, 만들어와도 상관없음)다.
addNumbers2({required int a, required int c, int b = 16}) {
  int res2 = a + b + c;
  if(res2 % 2 == 0)
    print('$a + $b + $c = 짝수');
  else
    print('$a + $b + $c = 홀수');
}