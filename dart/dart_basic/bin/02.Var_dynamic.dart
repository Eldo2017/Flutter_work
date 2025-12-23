/*
  타입 종류
  1) var : 처음 들어온 값이 type이 된다. type이 정해지면 바꾸지 못한다.
  2) dynamic : 처음 들어온 값이 type이 된다. 그러나 처음 타입과 상관없이 타입을 바꿀 수가 있다.
 */
void main() {
  // var name = "김";
  // name = "무옥";
  // name = 53; // 오류가 난다 -> 처음 들어온 값과 달라서

  dynamic num = 52;
  print(num);

  num = '김무옥';
  print(num);

  dynamic bool1 = true;

  bool1 = false;
  print(bool1);

  bool1 = 'true';
  print(bool1);

  bool1 = 83;
  print(bool1);

}