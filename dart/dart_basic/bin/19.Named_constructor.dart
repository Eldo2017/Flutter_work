/*
  Named constructor : 생성자에 이름을 만들어주는 형식
                      클래스명.이름작명()
 */

class Idol {
  String name;
  List<String> members;

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
  print(idol1.name);
  print(idol1.members);
  idol1.sayHello();
  idol1.introduce();

  print('--------------------------------------------------------------------');

  Idol idol2 = Idol.aList([['마크','제노','런쥔','해찬','천러','재민','지성'],'NCT DREAM']);
  print(idol2.name);
  print(idol2.members);
  idol2.sayHello();
  idol2.introduce();
}