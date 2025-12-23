/*
- Null Safety 타입 : 2.12 버전부터 도입
  1) 기본값 초기화 없이 선언하는 변수는 null 값에 대한 안정성을 보장할 목적으로
     타입을 모든 변수는 nullable, non-nullable로 구분해 줘야 한다.
     (1) nullable : null 값을 허용하는 타입
         -> 자료형 뒤에 ?를 붙여 사용한다
     (2) non-nullable : null 값을 허용하지 않는 타입
         -> 아무것도 붙이지 않을 시 non-nullable
 */

void main() {
  String name = "Moon";
  print(name);

  // name = null; -> 오류 : non-nullable 타입이기 때문
  String? name2 = "Yeong";
  name2 = null;
  print(name2);

  int? num = 55;
  num = null;
  print(num);

  // ! : nullable type으로 선언하였을 때, 변수 뒤에 !을 붙여 null인 경우 오류를 발생하도록 한다.
  //     변수명에 !를 붙이면, non-nullable의 타입이란 뜻이다.
  // String? name3 = 'Cheol';
  // print(name3);
  // print(name3!);
  //
  // name3 = null;
  // print(name3);
  // print(name3!); // 실행 시 오류

  int? num1; // null 허용
  int num2 = 28;
  print(num1);
  // print(num1 + num2); -> 오류 : 타입이 달라서 빌드가 안된다
  // print(num1! + num2); // 오류 : num1이 null이라 연산이 안된다
  
  // ?? : null일 때, 대체값을 사용할 수 있다. 변수 값은 변하지 않는다.
  print(num1 ?? 16); // num1에 null이 들어가 있다면 16으로 대신 사용하라
  print(num1 ?? 2 + num2);
  // 대체적으로 괄호로 묶어서 사용한다 : print((num1 ?? 2) + num2);
  print(num1);

  // if문을 null safety를 이용해 ?. 으로 사용할 수 있다.
  String? name4 = "문영철";
  if(name4 != null) {
    print(name4.isNotEmpty);
  }

  print(name4?.isEmpty); // name4가 null이 아니기 때문에 true나 false 중 하나가 나온다
  print(name4?.isNotEmpty);

  name4 = null;
  print(name4?.isEmpty); // null이면 그냥 아예 비어있는거나 마찬가지므로 null이 나온다
  print(name4?.isNotEmpty); // isEmpty와 동일
}