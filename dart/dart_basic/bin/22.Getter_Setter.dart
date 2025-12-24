/*
  Getter and Setter
  - 변수처럼 사용한다 (자바에서는 함수로 만든다)
    > 단순히 값을 넣거나 가져올 때 사용하기 때문이다
    > 함수를 사용하는 이유 : 프로그램 안에서 어떤 로직을 구현하려고 할 때 사용한다
 */

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

  // Getter
  String get FirstMember {
    return members[0];
  }

  // Setter : 파라미터는 무조건 하나만 받을 수 있다.
  set FirstMember(String name) {
    this.members[0] = name;
  }

  /*
  set nameSet(String name) {
    this.name = name;
  } -> final이 붙어서 아예 변경할 수가 없다
   */
}

void main() {
  Idol idol1 = Idol('NCT WISH', ['시온','리쿠','유우시','재희','료','사쿠야']);
  Idol idol2 = Idol.aList([['카리나','지젤','윈터','닝닝'],'AESPA']);
  print(idol1.FirstMember);
  print(idol2.FirstMember);

  print('-------------------------------------------------');

  idol1.FirstMember = '사쿠야';
  idol2.FirstMember = '윈터';
  print(idol1.FirstMember);
  print(idol2.FirstMember);

  // idol1.FirstMember('윈터'); -> 오류
}