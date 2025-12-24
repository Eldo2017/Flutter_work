/*
class Lecture<T> {
  final T id;
  final String name;

  Lecture(this.id, this.name);



  void printIdType() {
    print(id.runtimeType);
  }
}
 */

class Lecture<T, S> {
  final T id;
  final S name;

  Lecture(this.id, this.name);



  void printType() {
    print('id type : $id');
    print('name type : $name');
  }
}

void main() {
  Lecture<String, String> lecture1 = Lecture('1', 'C프로그래밍');
  Lecture<int, String> lecture2 = Lecture(2, '회로설계');

  lecture1.printType();
  lecture2.printType();
}