/*
void main() {
  calculating(7).listen((val) {
    print('연산 결과 : $val');
  });
}

Stream<int> calculating(int num) async* {
  for(int i=0;i<10;i++) {
    yield i*num;
  }
}
 */

/*
void main() {
  calculating(7).listen((val) {
    print('연산 결과 : $val');
  });
}

Stream<int> calculating(int num) async* {
  for(int i=0;i<10;i++) {
    yield i*num;

    await Future.delayed(Duration(seconds: 2));
  }
}
 */

/*
// 동시에 2개씩 실행
void main() {
  calculating(3).listen((val) {
    print('연산 결과 : $val');
  });

  calculating(6).listen((val) {
    print('연산 결과 : $val');
  });
}

Stream<int> calculating(int num) async* {
  for(int i=0;i<10;i++) {
    yield i*num;

    await Future.delayed(Duration(seconds: 3));
    await Future.delayed(Duration(seconds: 3));
  }
}
 */

/*
// 1개가 끝나고 2번째 것 실행
void main() {
  playAlls().listen((val) {
    print(val);
  });
}
Stream<int> playAlls() async* {
  yield* calculating(4); // yield*: 해당되는 모든 값이 들어올 때까지 기다린다
  yield* calculating(8);
}

Stream<int> calculating(int num) async* {
  for(int i=0;i<10;i++) {
    yield i*num;

    await Future.delayed(Duration(seconds: 2));
  }
}
 */

// 카운트하기 5, 4, 3, 2, 1
void main() async {
  /*
  CountDown().listen((val) {
    print(val);
  });
  */

  await for (int val in CountDown()) {
    print(val);
  }
}

Stream<int> CountDown() async* {
  for(int i=5; i>0;i--) {
    await Future.delayed(Duration(seconds: 2));
    yield i;
  }
}