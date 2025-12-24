/*
  - typedef : 함수의 타입을 정의하기 위해 사용한다
    ** 사용 이유
    1) 함수 타입이 길어질 때 가독성을 향상시킨다
    2) 같은 형태의 함수를 여러 곳에서 재사용한다
    3) API나 콜백 의도를 분명하게 표현한다

    ** 사용법
    typedef 타입명 = 반환타입 Function(매개변수들);

 */

/*
int add(int a, int b, int c) => a + b + c;
int sub(int a, int b, int c) => a - b - c;

typedef Operation = int Function(int a, int b, int c);

void main() {
  Operation operation1 = add; // 간단하게 사용하는 방식
  int res1 = operation1(3, 7, 14);
  print(res1);

  Operation operation2 = sub; // 간단하게 사용하는 방식
  int res2 = operation2(26, 13, 9);
  print(res2);
}
*/

typedef Operation = int Function(int a, int b, int c);

int add(int a, int b, int c) => a + b + c;
int sub(int a, int b, int c) => a - b - c;
int mul(int a, int b, int c) => a * b * c;

int cal(int a, int b, int c, Operation op) {
  return op(a,b,c);
}

void main() {
  int res1 = cal(1,4,12,add);
  int res2 = cal(23,11,6,sub);
  int res3 = cal(2,9,13,mul);

  print(res1);
  print(res2);
  print(res3);
}