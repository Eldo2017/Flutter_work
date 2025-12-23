// 비교 연산자 : <, >, ==, !=, <=, ...
void main() {
  int num = 1;
  print(num is int);
  print(num is String);

  print(num is! int);

  // String res = (17 < 30) ? "17이 30보다 작다" : "17이 30보다 더 크다";
  // print(res);

  (17 < 10) ? print("17이 10보다 작다") : print("17이 10보다 더 크다");
}