/*
  - private : _(아랫선)를 붙이면 private다
   > class에 _(아랫선)를 붙이면 현재 파일에서 사용이 가능하다
   > 변수나 함수 앞에 붙여도 이와 같다
 */

class _Idol {
  final String name;
  final List<String> members;

  _Idol(this.name, this.members);

  _Idol.fromList(List values)
    : this.members = values[0],
      this.name = values[1];

  _sayHello() {
    print('안녕하세요. $name입니다.');
  }

  _introduce() {
    print('우리 멤버는 $members입니다.');
  }

  String get FirstMember {
    return members[0];
  }



  set FirstMember(String name) {
    this.members[0] = name;
  }
}

void main() {
  _Idol idol1 = _Idol('NCT WISH', ['시온','리쿠','유우시','재희','료','사쿠야']);
  _Idol idol2 = _Idol('EXO', ['카이','수호','디오','찬열','백현','레이','세훈','시우민','첸']);
  _Idol idol3 = _Idol('ILLIT', ['윤아','민주','모카','원희','이로하']);
  _Idol idol4 = _Idol('AESPA', ['카리나','지젤','윈터','닝닝']);

  print(idol1.name);
  print(idol1.members);
  idol1._sayHello();
  idol1._introduce();

  print('----------------------------------------------------');

  print(idol2.name);
  print(idol2.members);
  idol2._sayHello();
  idol2._introduce();

  print('----------------------------------------------------');

  print(idol3.name);
  print(idol3.members);
  idol3._sayHello();
  idol3._introduce();

  print('----------------------------------------------------');

  print(idol4.name);
  print(idol4.members);
  idol4._sayHello();
  idol4._introduce();
}