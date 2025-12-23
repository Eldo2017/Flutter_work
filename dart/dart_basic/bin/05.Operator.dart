/*
  - 기존 프로그램과 동일
    > ++, --, +=, -=, %=, ... 모두 기존 프로그램과 동일
  - 다른 것
    > 나눗셈: int / int = double
    > 몫 : ~/
  - ??= : 만약 값이 null이라면 오른쪽의 값을 변수에 저장하고
          null이 아니면 왼쪽 값을 변수에 저장한다
 */

void main() {
  int num1 = 4;
  int num2 = 2;
  // int res = num1 / num2; -> 오류 : 결과는 무조건 double형이다
  double res = num1 / num2;
  print(res);

  int num3 = 3;
  print("몫 : ${num1 ~/ num3}");

  // num3 ??= 11;
  // print(num3);

  int? num4 = 2;
  print(num4);

  num4 = null;
  print(num4);

  num4 ??= 7; // num4가 null이므로 num4에 7이란 값을 넣어라
  print(num4);

  num4 ??= 16; // num4에 7이 들어있기 때문에 num4는 7로 유지된다
  print(num4);

  /*
    ? : 자료형에 붙인다
    ?? : 변수에 붙인다. null일 때 기본값을 제공한다. (원본 바뀌지 않는다.)
    ??= : 변수에 붙인다. 변수 값을 저장한다. (원본이 바뀐다.)
   */
}