/*
  Stream : 스트림을 내가 닫을 때까지 계속 값을 받을 수 있다
           대신 import가 필요하다
  StreamController : 스트림을 관리하는 관리자
  - stream : 스트림에 값이 들어오면 받는다 (단, 한번만 스트림을 사용할 수 있다)
  - listen : 스트림에 있는 값을 출력한다
  - sink : 스트림에 값을 보낸다
 */

import 'dart:async';

/*
void main() {
  final controller = StreamController(); // or var (그러나, final을 주로 사용)
  final stream = controller.stream;

  final res1 = stream.listen((val) {
    print('Listener 1 : $val');
  });

  controller.sink.add(14);
  controller.sink.add(24);
}
 */

// asBroadCastStream() : 여러번 스트림을 사용할 때
void main() {
  final controller = StreamController(); // or var (그러나, final을 주로 사용)
  final stream = controller.stream;

  final res1 = stream.listen((val) {
    print('Listener 1 : $val');
    print('-------------------------------------------------');
  });

  controller.sink.add(14);
  controller.sink.add(24);
}