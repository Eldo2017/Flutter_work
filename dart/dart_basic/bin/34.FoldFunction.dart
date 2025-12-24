/*
  - Fold 함수 : reduce() 함수와 동일하다
    > 차이점
      >> 초기값을 줄 수 있다
      >> 결과 타입이 맞지 않아도 상관없다
 */

void main() {
  List<int> numbers = [1,3,5,7,9];

  var res = numbers.fold(10, (prev,next) {
    print('previous : $prev');
    print('next : $next');
    print('total : ${prev + next}');
    print('------------------');

    return prev + next;
  });

  List<String> words = ['차하나','차두리','권세모'];
  var res2 = words.fold<String>('', (prev,next) => prev + next);

  print(res2);
  print('------------------------');

  // 타입이 맞아야 가능하다
  // var count = words.fold<int>(0, (prev, next) => prev.length + next.length);
  var count = words.fold<int>(0, (prev, next) => prev + next.length);

  print(count);
  print('------------------------');
}