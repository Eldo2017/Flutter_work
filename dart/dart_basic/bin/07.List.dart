/*
  - 집합 자료형 : List, set, map
    1) List 타입 : 자바의 List와 동일하다.
    2) set 타입
    3) map 타입
 */

void main() {
  List<String> name = ['니에미','부랄','섹'];
  List<int> numbers = [1,2,3,4,5,6];
  print(name);
  print(numbers);

  print(name[2]);
  print(name.length);

  name.add('시바사키');
  print(name);

  name.remove('섹');
  print(name);

  print(name.indexOf('니에미'));
}