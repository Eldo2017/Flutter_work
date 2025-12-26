/*
  클래스 앞에 붙는 키워드
  1. final
     extends, implement, mixin으로 사용이 불가하다
 */

/*
final class Person {
  final String name;
  final int age;

  Person({
    required this.name,
    required this.age
  });
}
 */

/*
class Idol extends Person {
  Idol({required super.name, required super.age});
}
 */

// 2. base: 다른 라이브러리에서 사용이 불가하다
//          extends는 가능해도 같은 라이브러리 내에서만
//          impplement, mixin도 불가능하다

base class Person2 {
  final String name;
  final int age;

  Person2({
    required this.name,
    required this.age
  });
}

base class Student extends Person2 {
  Student({required super.name, required super.age});
}

// 3. Sealed
//    abstract면서 final이다
//    같은 라이브러리 내에서만 사용 가능하다
//    패터매칭 사용이 가능하다

sealed class Person3 {}
class Idol extends Person3 {}
class Chef extends Person3 {}
class Lawyer extends Person3 {}

String whoIsHe(Person3 person) => switch(person) {
  Idol i => '아이돌',
  Chef c => '셰프',
  _ => '그 외'
};


// 4. mixin
//    dart에선 다중 상속이 안된다
//    mixin에선 with 키워드를 이용해 다중 상속을 가능하게 한다
//    단, 생성자가 없다
mixin class AnimalMixin1 {
  String bark1() {
    return 'Dog';
  }
}

mixin class AnimalMixin2 {
  String bark2() {
    return 'Dog';
  }
}

// class Dog extends AnimalMixin, AnimalMixin2 {}
class Dog with AnimalMixin1, AnimalMixin2 {}
// class Cat extends AnimalMixin1, AnimalMixin2, AnimalMixin3 {}

/*
  총 정리

     키워드           | extends  |  implements  | with   | 외부 상속
     class           |  O       |   O          |  O     |  O
     final class     |  X       |   X          |  X     |  X
     base class      |  O       |   X          |  X     |  X
     interface class |  X       |   O          |  X     |  O
     sealed class    |  O       |   X          |  O     |  X
     abstract class  |  O       |   O          |  O     |  O
     mixin class     |  X       |   O          |  O     |  O
 */

void main() {
  print(whoIsHe(Idol()));
  print(whoIsHe(Chef()));
  print(whoIsHe(Lawyer()));
}