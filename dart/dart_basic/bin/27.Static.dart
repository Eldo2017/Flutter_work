class Employee {
  static String? building;
  String name;

  Employee(this.name);

  void printNameAndBuilding() {
    print('제 이름은 $name입니다. $building에서 근무하고 있는 사람입니다.');
  }

  static void printBuilding() {
    print('저는 $building에서 근무하고 있습니다.');
  }
}

void main() {
  Employee kdh = Employee('김두한');
  Employee kmo = Employee('김무옥');
  // Employee myc = Employee('문영철');

  // kdh.name = '김동환';
  kdh.printNameAndBuilding();
  kmo.printNameAndBuilding();

  Employee.building = '종로빌딩';
  kdh.printNameAndBuilding();
  kmo.printNameAndBuilding();

  Employee.printBuilding();
}