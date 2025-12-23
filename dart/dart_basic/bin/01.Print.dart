/*
`자료형
 1) bool(not boolean): &&, || 모두 가능하다
 2) int(** int / int = double => 자동 형변환)
 3) double(float만 없다)
 4) String : "", '' 모두 가능하다
 5) Null : null만 가능하다

** print(같은 자료형만 넣어야 한다)
 */

// 실행 단축키 : shift + F10 [맨 마지막 실행내용을 재실행]
//             ctrl + shift + F10 [현재 열려있는 파일 실행]
void main() {
  var name = "김두한"; // 자동으로 String
  var num = 52; // 자동으로 int

  print(name.runtimeType);
  print(num.runtimeType);
  // 자료형이 다르면 따옴표를 반드시 넣어라
  // print(name + ' ' + name);
  // print('${name}' + ' '+ '${num}');
  // print(name);
  // print(num);
  // print('${name} ${num}');
  // print('$name $num');
  print('$num.runtimeType $num'); // 결과 : 52.runtimeType 52
  print('${num.runtimeType} $num'); // 결과 : int 52
}