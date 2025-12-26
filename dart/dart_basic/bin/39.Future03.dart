// 반환값
void main() async {
  // Future <void>는 저장이나 출력도 된다
  final res = await addNum(60, 83);
  print('결과 : $res');
}

Future <int> addNum(int x, int y) async {
  print('계산 시작 : $x + $y');

  await Future.delayed(Duration(seconds: 3), () {
    print('계산 완료 : $x + $y = ${x + y}');
  });

  print('함수 완료되었습니다');
  return x + y;
}