/*
  예제 : 가위바위보 게임
 */

import 'dart:io';
import 'dart:math';

void main() {
  const RSP = ['Rock','Scissors','Paper'];
  stdout.write('가위, 바위, 보 중 하나를 입력하시오(영어로만: Rock/Scissors/Paper) : ');

  try {
    final input = stdin.readLineSync();

    if(input == null) {
      print("입력이 없습니다. 프로그램을 종료합니다.");
      return;
    }

    // 입력 정규화 : 공백 제거 + 첫 글자 대문자 형태로 맞추기
    final answer2  = _normalize(input);

    if(!RSP.contains(answer2)) {
      print('잘못된 입력입니다. : "$input"');
      print("가능한 입력은 Rock, Scissors, Paper 중 하나여야 합니다.");
    }

    final answer1 = RSP[Random().nextInt(3)]; // String

    print('상대방의 대답 : $answer1');
    print('자신의 대답 : $answer2');

    // 승패 판정 (Pattern Matching 느낌의 switch)
    final res = switch((answer2, answer1)) {
    // 무승부
    (var me, var you) when me == you => '무승부',

    //자신이 이기는 경우
    ('Rock', 'Scissors') => '승리',
    ('Scissors','Paper') => '승리',
    ('Paper','Rock') => '승리',

    // 그 외는 패배
    _ => '패배',
    };

    print('결과 : $res');
  } catch(e) {
    // 예외 발생 처리
    print('오류 발생 : $e');
  }
}

// 입력을 Rock/Scissors/Paper 형태로 정규화
String _normalize(String s) {
  final t = s.trim().toLowerCase();
  if(t.isEmpty) return t;

  // ex) "rock" -> "Rock"
  return t[0].toUpperCase() + t.substring(1);
}