/*
  비동기 처리
  - Future, Stream
  - 이 둘의 차이
   > Future는 한번만 사용하는 반면, Stream은 여러번을 사용할수 있다
   > 한번만 응답 받을 때: async / await / Future
   > 지속적으로 응답 받을 때: async* / yield / stream

  - 사용
   > 서버에서 데이터를 가져올때
   > 파일 읽기
   > 계산이 오래 걸리는 작업

  Future : JavaScript의 Promise와 동일하다
           싱글 스레드 환경에서 비동기 처리를 위해 사용한다.
           * JavaScript의 Promise는 특정 작업이 완료되면 다음 작업을 수행하겠다는 의미이다.
           * Dart Future는 미래에 완료가 될 작업을 나타내는 객체이다. (나중에 결과 받기)
*/

void main() {
  // Future<String> name = Future.value('김희빈');
  // Future<int> num = Future.value(22);
  // Future<bool> isTrue = Future.value(true);
  /*
  Future.delayed(Duration(seconds : 3), () {
    print('Delay 완료');
  });
  */
  addNum(12, 26);
}

void addNum(int x, int y) {
  print('계산 시작 : $x + $y');

  Future.delayed(Duration(seconds: 3), () {
    print('계산 완료 : $x + $y = ${x + y}');
  });

  print('함수 완료되었습니다');
}