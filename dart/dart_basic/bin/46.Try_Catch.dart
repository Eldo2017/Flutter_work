/*
  예외 처리
  - finally: 코드에 return문이 있어도 된다
  - on: 오류의 종류를 알 때 그 오류의 이름을 예외 처리할 용도로 사용한다
  - throw / rethrow: 일부러 오류를 발생시킬때 사용한다
 */

/*
void main() {
  int x = 11;
  print(x/0); // 오류가 안나고 infinity로 나온다
  try {
    print(x~/0);
  } catch(error, stack) {
    print('오류 메시지 : $error');
    print('Stack에 들어있는 오류 전체 : $stack');
  } finally {
    print('finally 구문');
  }
  print('main 종료');
}
 */

// on: 오류의 종류를 알 때 그 오류의 이름을 예외 처리할 용도로 사용한다
/*
void main() {
  int y = 28;
  try {
    print(y~/0);
  } on UnsupportedError catch(e) {
    print('~/ 해당 연산자는 0으로 나눌 수가 없습니다');
  } on TypeError catch(e) {
    print('타입이 맞지 않습니다');
  } catch(e) {
    print('오류 발생 : $e');
  }
}
 */

// throw, rethrow

void main() {
  try {
    Dio();
  } catch(e) {
    print('error : $e');
  }
}

/*
void Ray() {
  try {
    throw Exception('오류 발생!');
  } catch(e) {
    rethrow;
  }
}
 */

// 사용자 정의 예외 클래스
class CustomException implements Exception {
  final String msg;

  CustomException(this.msg);

  @override
  String toString() {
    return msg;
  }
}

void Dio() {
  try {
    // throw Exception('오류 발생!');
    throw CustomException('customException 발생!');
  } catch(e) {
    rethrow;
  }
}