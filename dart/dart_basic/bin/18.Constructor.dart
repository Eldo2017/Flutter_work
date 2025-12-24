/*
  - 생성자
    * default constructors : 생성자를 선언하지 않을 때 제공되는 생성자
    * named constructors : 개발자의 필요에 의하여 생성한 생성자
    * redirection constructors : 생성자의 본문은 비어있는데 전달이 된 생성자에
                                 대한 초기값 등을 구현할 때 사용하는 생성자
    * const constructors : 상수 생성자, 클래스가 변하지 않는 객체를 생성하는 경우 사용
    * factory constructors : 매번 새로운 객체를 만들지 않고, 이미 존재하는 객체를 반환
 */

class Idol {
  String name;
  List<String> members;

  /*
  Idol(String name, List<String> members)
    : this.name = name, this.members = members;
  */

  Idol(this.name, this.members); // 위와 같다 (위를 간단히 하면 이렇게 되는 것)

  sayHello() {
    print('안녕하세요. $name입니다.'); // 괄호를 넣어야 되는 경우는 this.name 이런 경우에!
  }

  introduce() {
    print('우리 멤버는 $members입니다.');
  }
}

void main() {
  Idol ILLIT = Idol('ILLIT', ['윤아','민주','모카','원희','이로하']);
  Idol EXO = Idol('EXO', ['카이','수호','디오','찬열','백현','레이','세훈','시우민','첸']);

  print(ILLIT.name);
  print(ILLIT.members);
  ILLIT.sayHello();
  ILLIT.introduce();
  print('----------------------------------------------------------');
  print(EXO.name);
  print(EXO.members);
  EXO.sayHello();
  EXO.introduce();
}