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
    : super(membersCount : membersCount, name : name);

  //BoyGroup({required super.name, required super.membersCount});
}

class GirlGroup extends Idol {
  GirlGroup({required super.name, required super.membersCount});
}

void main() {
  Idol idol1 = Idol(name: 'Exo', membersCount: 9);
  idol1.sayName();
  idol1.sayMembersCount();
  print('------------------------------------------------');
  Idol idol2 = Idol(name: 'Illit', membersCount: 5);
  idol2.sayName();
  idol2.sayMembersCount();
  print('------------------------------------------------');

  // 1. 생성자 사용 시
  BoyGroup NW = BoyGroup('NCT WISH', 6);
  NW.sayName();
  NW.sayMembersCount();
  print('------------------------------------------------');
  GirlGroup Twice = GirlGroup(name: 'Twice', membersCount: 9);
  Twice.sayName();
  Twice.sayMembersCount();
}