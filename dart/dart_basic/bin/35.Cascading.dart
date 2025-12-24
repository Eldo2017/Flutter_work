// cascading 연산자 : 값들을 풀어놓는 역할이다
void main() {
  List<int> even = [2,4,6,8];
  List<int> odd = [1,3,5,7,9];
  print([even, odd]);
  print([...even, ...odd]);

  print(even);
  print([...even]);
  print(even == [...even]);
}