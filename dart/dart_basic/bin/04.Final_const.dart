/*
  * final, const
    1) 공통점 : 상수, 자료형 생략 가능
    2) 차이점 : final은 build time에서 값을 몰라도 상관없다.
               그러나 const는 build time에 미리 값을 알아야 한다.
 */

void main() {
  final String name1 = 'Kim';
  const String name2 = 'YeongTae';

  DateTime now1 = DateTime.now();
  print(now1);

  final DateTime fNow = DateTime.now();
  print(fNow);

  // const DateTime cNow = DateTime.now(); // Build 시 시간을 알 수가 없다
  // print(cNow);
}