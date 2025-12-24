class TimesTwo {
  final int num;
  TimesTwo(this.num);

  int cal() => num * 2;
}

class TimesFour extends TimesTwo {
  // TimesFour(int num) : super(num);
  TimesFour(super.num);

  @override
  int cal() {
    // 1. 부모의 num값 호출
    // return super.num * 4;
    // return this.num * 4;
    return super.cal() * 2;
  }
}

void main() {
  TimesTwo tt = TimesTwo(4);
  print(tt.cal());

  TimesFour tf = TimesFour(7);
  print(tf.cal());
}