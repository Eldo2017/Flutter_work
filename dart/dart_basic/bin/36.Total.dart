class Person {
  final String name;
  final String group;

  Person({required this.name, required this.group});

  @override
  String toString() {
    return 'Person(name: $name, group: $group)';
  }
}

void main() {
  List<Map<String, String>> people = [
    {'name' : '재희', 'group' : 'NCT WISH'},
    {'name' : '이로하', 'group' : 'ILLIT'},
    {'name' : '카이', 'group' : 'EXO'},
    {'name' : '모모', 'group' : 'Twice'},
    {'name' : '리쿠', 'group' : 'NCT WISH'},
    {'name' : '원희', 'group' : 'ILLIT'},
    {'name' : '카리나', 'group' : 'Aespa'},
    {'name' : '제노', 'group' : 'NCT DREAM'}
  ];
  print(people);
  print('--------------------------------------------------------------');

  var perPeople = people
      .map((x) => Person(name: x['name']!, group: x['group']!))
      .where((x) => x.group == 'NCT WISH');
  print(perPeople);

  print('---------------------------------------------------------------');

  var perPeople2 = people
      .map((x) => Person(name: x['name']!, group: x['group']!))
      .where((x) => x.group == 'NCT WISH')
      .fold<int>(0, (prev,next) => prev + next.name.length);
  print(perPeople2);

  print('---------------------------------------------------------------');
}