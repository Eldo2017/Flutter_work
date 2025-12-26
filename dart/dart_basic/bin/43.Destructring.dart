// Destructring(구조 분해) : 어떤 구조든 각각의 변수에 한번의 대입한다
void main() {
  // 튜플
  final(name, age) = ('리쿠', 22);
  print(name);
  print(age);
  print('------------------------------------');

  // 리스트
  final NW = ['사쿠야','유우시'];
  final [String name1, String name2] = NW;
  print(name1);
  print(name2);

  // rest 연산자
  final nums = [1,2,3,4,5,6,7,8,9];
  final [a,b, ..., i] = nums;
  print(a);
  print(b);
  print(i);
  print('-------------------------------------');

  final [a1,b1,...,rest1,i1] = nums;
  print(a1);
  print(b1);
  print(rest1);
  print(i1);
  print('-------------------------------------');

  // _는 건너뛰기이다
  final [a2,b2,...,rest2,i2,_] = nums;
  print(a2);
  print(b2);
  print(rest2);
  print(i2);
  print('-------------------------------------');

  // 맵
  final RyoMap = {'name':'료','age':18};
  final {'name':name3,'age':age3} = RyoMap;
  print(name3);
  print(age3);
  print('-------------------------------------');

  final RayInfo = Idol(name: '레이', age: 26);
  final Idol(name: name4, age: age4) = RayInfo;
  print(name4);
  print(age4);
}

class Idol {
  final String name;
  final int age;

  Idol({
    required this.name,
    required this.age
  });
}