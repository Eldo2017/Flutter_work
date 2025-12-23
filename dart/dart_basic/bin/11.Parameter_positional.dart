// positional parameter : 순서를 지키는 파라미터
void main() {
  addNumbers(6, 10, 14);
}

addNumbers(int x, int y, int z) {
  int res = x + y + z;
  if(res % 2 == 0)
    print('$x + $y + $z = 짝수');
  else
    print('$x + $y + $z = 홀수');
}