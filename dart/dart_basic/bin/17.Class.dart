/*
  class : 모든 클래스 부모는 object = 자바와 유사
 */

class Idol {
  String name = 'NCT WISH';
  List<String> members = ['시온','리쿠','유우시','재희','료','사쿠야'];

  sayHello() {
    print('반갑습니다. NCT WISH입니다.');
  }

  // new 키워드는 쓰지 않는다
  introduce() {
    print('저희 멤버는 시온, 리쿠, 유우시, 재희, 료, 사쿠야입니다.');
  }
}

void main() {
  Idol NW = Idol(); // NW = NCT WISH
  print(NW.name);
  print(NW.members);
  NW.sayHello();
  NW.introduce();
}