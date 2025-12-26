// Pattern Matching: 자료형 매칭
void main() {
  final KaiInfo = ('카이',25);
  // final KaiInfo = (false,25); -> 아래에 들어오는 값이 정확하지 않아서 오류가 생긴다
  final (name as String, age as int) = KaiInfo;
  // final (name as bool, age as String) = KaiInfo; -> RunTime 오류
  print(name);
  print(age);

  /*
  Switcher('abc');
  Switcher(['1','2']);
  Switcher('xyz');
  Switcher(['1','2','3']);
  Switcher([1,2,3]);
  Switcher(['1',2,true]);

  Switcher([7,10]);
  Switcher([11,'19']);
   */
  Switcher(7);
  Switcher(19);
}

void Switcher(dynamic anything) {
  switch(anything) {
    case 'abc':
      print('Match : abc');
    case ['1','2']:
      print('Match : [1, 2]');
    case [_,_,_]:
      print('Match: [_,_,_]');
    // int형의 개수가 2개인 것
    case [int x, int y]:
      print('match: [int : $x, int: $y]');
    case > 5 && < 10:
      print('Match: > 5 && < 10');
    default:
      print('No Match');
  }
}