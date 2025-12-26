// Record : List와 동일하지남 타입 명시가 가능하다
/*
void main() {
  final res = NameAndAge({'name' : '이금자','age':40});
  print(res);
}

NameAndAge(Map<String, dynamic> json) {
  return [json['name'], json['age']];
}
 */

// Record
void main() {
  // 1. 출력 1
  final res = NameAndAge({'name' : '김희빈','age': 22});
  print(res);

  print('------------------------------------------');

  print(res.$1); // $?: 각 필드에 명명된 Getter를 호출한다
  print(res.$2);

  print('------------------------------------------');

  // 2. 출력 2 (최다빈수)
  final res2 = getNCTWISHWithType2();
  for(final item in res2) {
    print(item.$1);
    print(item.$2);
  }

  print('------------------------------------------');

  // 3. 출력 3
  final res3 = getNCTWISHWithType3();
  for(final item in res3) {
    print(item.$1);
    print(item.$2);
  }

  print('------------------------------------------');

  // 4. 출력 4
  final res4 = getNCTWISHWithType4();
  for(final item in res4) {
    print(item.name);
    print(item.age);
  }

  print('------------------------------------------');

  // 5. 출력 5
  final res5 = getBoyGroup();
  print(res5);
  print(res5.$1);
  print(res5.$2);
  print(res5.$3);
}

// 1.
(String, int)NameAndAge(Map<String,dynamic> json) {
  return (json['name'] as String, json['age'] as int);
}

List<Map<String, dynamic>> getNCTWISHWithType1() {
  return [
    {'name':'시온','age':23},
    {'name':'재희','age':20}
  ];
}

// 2.
// 위를 소괄호로 바꾸자
List<(String, int)> getNCTWISHWithType2() {
  return [('시온',23),('재희',20)];
}

// 3.
// 매개변수에 이름을 넣을 수 있다
List<(String name, int age)> getNCTWISHWithType3() {
  return [('시온',23),('재희',20)];
}

// 4.
List<({String name, int age})> getNCTWISHWithType4() {
  return [(name: '시온',age: 23),(name: '재희',age: 20)];
}

// 5.
(String name, String group, int age) getBoyGroup() {
  return ('시온','NCT WISH',23);
}