class Idol {
  String name;
  int membersCount;

  // required => 이름 있는 것
  Idol({required this.name, required this.membersCount});

  sayName() {
    print('우리는 $name입니다.');
  }

  sayMembersCount() {
    print('우리 $name 멤버는 $membersCount명의 멤버로 구성된 팀입니다.');
  }
}

class BoyGroup extends Idol {
  BoyGroup(String name, int membersCount)
    : super(membersCount: membersCount, name: name);

  void sayMale() {
    print('우리는 남자 아이돌 그룹이랍니다~');
  }
}

class GirlGroup extends Idol {
  GirlGroup(String name, int membersCount)
    : super(membersCount: membersCount, name: name);

  void sayFemale() {
    print('우리는 여자 아이돌 그룹이랍니다~');
  }
}

void main() {
  Idol idol1 = Idol(name: 'Illit', membersCount: 5);
  idol1.sayName();
  idol1.sayMembersCount();
  // idol1.sayMale(); -> 사용 불가

  print('-------------------------------------------------------');

  BoyGroup NW = BoyGroup('NCT WIsH', 6);
  NW.sayName();
  NW.sayMembersCount();
  NW.sayMale(); // 사용 가능

  print('-------------------------------------------------------');
  GirlGroup Twice = GirlGroup('Twice', 9);
  Twice.sayName();
  Twice.sayMembersCount();
  Twice.sayFemale();

  print('-------------- Type Comparison -------------------');
  print(NW is Idol);
  print(NW is BoyGroup);
  print(NW is GirlGroup);
}