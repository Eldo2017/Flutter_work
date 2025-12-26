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

// 함수에는 반드시 파라미터 뒤에 async를 넣고, Future 앞에는 await를 넣는다
/*
void main() {
  addNum(7, 29);
  addNum(51, 49);
}
 */

/*
void addNum(int x, int y) async {
  print('계산 시작 : $x + $y');

  await Future.delayed(Duration(seconds: 3), () {
    print('계산 완료 : $x + $y = ${x + y}');
  });

  print('함수 완료되었습니다');
}
 */

// 전체를 순서대로 구현하려면?
void main() async {
  // await를 붙이면 오류! -> addNum() 함수가 void형이기 때문!
  // 수정 : 일반 함수를 Future 함수로 변환 => Future <void>
  await addNum(7, 29);
  await addNum(51, 49);
}

Future <void> addNum(int x, int y) async {
  print('계산 시작 : $x + $y');

  await Future.delayed(Duration(seconds: 3), () {
    print('계산 완료 : $x + $y = ${x + y}');
  });

  print('함수 완료되었습니다');
}