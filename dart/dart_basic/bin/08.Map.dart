void main() {
  Map<String, int> students = {
    '유용욱' : 37,
    '박재박' : 34,
    '김주현' : 29
  };

  print(students);
  print(students['유용욱']);

  students.addAll({'이효진' : 32});
  print(students);

  students['조수연'] = 23;
  print(students);

  students.remove('박재박');
  print(students);

  print('keys : ${students.keys}');
  print('values : ${students.values}');
}