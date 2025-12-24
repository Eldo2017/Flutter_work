/*
  객체 선언시 const가 없을 때, 객체가 별도로 만들어진다. 서로 다른 객체가 된다.
  객체 선언시 const가 있으면, 하나의 객체로 사용이 된다. 같은 객체가 된다.
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
}

void main() {
  Idol idol1 = Idol('NCT DREAM', ['마크','제노','런쥔','해찬','천러','재민','지성']);
  Idol idol2 = Idol('NCT DREAM', ['마크','제노','런쥔','해찬','천러','재민','지성']);
  print(idol1 == idol2);

  Idol idol3 = const Idol('NCT WISH', ['시온','리쿠','유우시','재희','료','사쿠야']);
  Idol idol4 = const Idol('NCT WISH', ['시온','리쿠','유우시','재희','료','사쿠야']);
  Idol idol5 = const Idol('AESPA', ['카리나','지젤','윈터','닝닝']);
  print(idol3 == idol4);
  print(idol3 == idol5);

}