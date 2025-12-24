// where 함수 : 결과가 true인 것만 가져오는 함수 (filter와 동일)
void main() {
  List<Map<String, String>> people = [
    {'name' : '재희', 'group' : 'NCT WISH'},
    {'name' : '이로하', 'group' : 'ILLIT'},
    {'name' : '카이', 'group' : 'EXO'},
    {'name' : '모모', 'group' : 'Twice'},
    {'name' : '리쿠', 'group' : 'NCT WISH'},
    {'name' : '원희', 'group' : 'ILLIT'},
    {'name' : '제노', 'group' : 'NCT DREAM'}
  ];

  print(people);

  // group에서 NCT WISH인 것만 가져와라
  var nw = people.where((x) => x['group'] == 'NCT WISH');
  print(nw);
  // group에서 ILLIT인 것만 가져와라
  var illit = people.where((x) => x['group'] == 'ILLIT');
  print(illit);
}