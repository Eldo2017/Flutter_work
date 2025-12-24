abstract class IdolInterface {
  String name;
  IdolInterface(this.name);

  void sayName();
}

class BoyGroup implements IdolInterface {
  @override
  String name;

  BoyGroup(this.name);

  @override
  void sayName() {
    print('우리 이름은 $name입니다.');
  }
}

class GirlGroup implements IdolInterface {
  @override
  String name;

  GirlGroup(this.name);

  @override
  void sayName() {
    print('우리 이름은 $name입니다.');
  }
}

void main() {
  BoyGroup NW = BoyGroup('NCT WISH');
  GirlGroup ILLIT = GirlGroup('ILLIT');

  NW.sayName();
  ILLIT.sayName();

  print(NW is IdolInterface);
  print(NW is BoyGroup);
  print(NW is GirlGroup);

  print(ILLIT is IdolInterface);
  print(ILLIT is BoyGroup);
  print(ILLIT is GirlGroup);
}