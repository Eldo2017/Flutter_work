// 함수 반환형을 쓰지 않는다면 void를 생략한 것이다.
addNumbers() {
  print('addNumbers 실행합니다');
}

// 3개의 숫자를 변수에 입력하고 모두 더한 값이 짝수인지 홀수인지 검사하는 것
addNumbers2() {
  int x = 2;
  int y = 4;
  int z = 7;
  int res = x + y + z;
  print('x: $x');
  print('y: $y');
  print('z: $z');

  if (res % 2 == 0) {
    print('합계는 짝수입니다.');
    // 2 + 4 + 7 = 짝수
    print('$x + $y + $z = 짝수');
  }
  else {
    print('합계는 홀수입니다.');
    // 2 + 4 + 7 = 홀수
    print('$x + $y + $z = 홀수');
  }
}

void main() {
  addNumbers();
  addNumbers2();
}