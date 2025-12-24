void main() {
  List<String> ND = ['천러','런쥔','제노','마크','재민','지성','해찬'];

  // NCT DREAM 천러, NCT DREAM 런쥔, ...

  /*
  Iterable<String> newND = ND.map((x) {
    return 'NCT DREAM $x';
  });
   */

  Iterable<String> newND = ND.map((x) => 'NCT DREAM $x');

  print(ND);
  print(newND);
  print(newND.toList());

  print('--------------------------------------------------------------------');

  // [1.jpg, 2.jpg, 3.jpg, 4.jpg, ... ,7.jpg]
  String num = '1234567';
  List<String> jpg = num.split('').map((y) => '$y.jpg').toList();
  print(jpg);

  print('--------------------------------------------------------------------');

  Map<String, String> Professor = {
    '차하나':'기계공학과',
    '차두리':'체육학과',
    '권세모':'음악학과',
    '독고오공':'컴퓨터공학과',
    '독고온달':'전자공학과',
    '국수호':'국방학과',
    '김녹원':'생물학과'
  };

  var res = Professor.map((key,value) => MapEntry('$key 교수 ', '$value 담당'));
  print(Professor);
  print(res);
}