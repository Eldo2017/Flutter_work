/*
  Immutable : 한번 만들어진 객체(값)를 변경할 수 없다는 뜻이다
              값을 바꿀 수가 없으므로 항상 새로운 객체를 만들어 교체해야 한다

  - 사용하는 이유
    > 상태 추적이 간단하다
    > 멀티스레드 환경에서 안전하다
    > 상태관리가 중요한 flutter에서는 매우 중요하다

  - 사용 방범
    1) 인스턴스 변수를 상수로 바꾸기
    2) 생성자를 상수로 바꾸기
 */

// 방법 1 : 인스턴스 변수를 상수로 변경
/*
class Idol {
  final String name;
  final List<String> members;

  Idol(this.name, this.members);

  Idol.aList(List values)
      : this.members = values[0],
        this.name = values[1];

  void sayHello() {
    print('안녕하세요. $name입니다.');
  }

  void introduce() {
    print('우리 멤버는 $members입니다.');
  }
}

void main() {
  Idol idol1 = Idol('ILLIT', ['윤아', '민주', '모카', '원희', '이로하']);
  // idol1.name = 'IVE'; -> 오류 : 값은 객체가 한번 만들어지면 바꿀 수가 없다
  print(idol1.name);
  print(idol1.members);
  idol1.sayHello();
  idol1.introduce();

  print('--------------------------------------------------------------------');

  Idol idol2 = Idol.aList([['마크','제노','런쥔','해찬','천러','재민','지성'],'NCT DREAM']);
  // idol2.members = ['카이','레이']; -> 오류 : 위와 유사
  print(idol2.name);
  print(idol2.members);
  idol2.sayHello();
  idol2.introduce();
}
 */

// 방법 2 : 생성자를 상수로 바꾸기
class Idol {
  final String name;
  final List<String> members;

  const Idol(this.name, this.members);

  Idol.aList(List values)
      : this.members = values[0],
        this.name = values[1];

  void sayHello() {
    print('안녕하세요. $name입니다.');
  }

  void introduce() {
    print('우리 멤버는 $members입니다.');
  }
}

void main() {
  Idol idol1 = const Idol('ILLIT', ['윤아', '민주', '모카', '원희', '이로하']);
  // idol1.name = 'IVE'; -> 오류 : 값은 객체가 한번 만들어지면 바꿀 수가 없다
  print(idol1.name);
  print(idol1.members);
  idol1.sayHello();
  idol1.introduce();

  print('--------------------------------------------------------------------');

  Idol idol2 = Idol.aList([['마크','제노','런쥔','해찬','천러','재민','지성'],'NCT DREAM']);
  // idol2.members = ['카이','레이']; -> 오류 : 위와 유사
  print(idol2.name);
  print(idol2.members);
  idol2.sayHello();
  idol2.introduce();
}