// optional parameter : 있어도 되고 없어도 되는 파라미터, 대괄호로 묶어라
void main() {
  addNumbers(10, 13);
  print('-------------------------------');
  addNumbers2(1, 8, 12, 19);
}

// addNumbers(int x, int y, [int z, int w]) - 오류 : non-nullable 타입이다. (값을 넣지 않으면 null이 들어갈 수도 있어서)

// 방법 1

addNumbers(int x, int y, [int? z, int? w]) {
  z ??= 14;
  w ??= 20;
  int res = x + y + z + w;
  print(res);
}

// 방법 2
addNumbers2(int x, int y, [int z = 3, int w = 6]) {
  int res = x + y + z + w;
  if (res % 2 == 0) {
    print('$x + $y + $z + $w = 짝수');
  } else {
    print('$x + $y + $z + $w = 홀수');
  }
}