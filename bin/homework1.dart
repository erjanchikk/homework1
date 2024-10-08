void main(List<String> arguments) {
  Students erjan = Aspirant(
    scientificWork: "Проект - 1",
    firstName: "erjan",
    lastName: "mamytkanov",
    group: "flutter 3",
    avarageMark: 5,
  )..scholarship();
}

abstract class Students {
  String firstName;
  String lastName;
  String group;
  int avarageMark;
  Students({
    required this.firstName,
    required this.lastName,
    required this.group,
    required this.avarageMark,
  });
  void scholarship() {
    avarageMark == 5 ? 20000 : 0;
    print(avarageMark);
  }
}

class Aspirant extends Students {
  String scientificWork;
  Aspirant({
    required this.scientificWork,
    required super.firstName,
    required super.lastName,
    required super.group,
    required super.avarageMark,
  });
  @override
  void scholarship() {
    int stp = 0;
    avarageMark == 5 ? stp = 40000 : stp = 18000;
    print(
        "У студента $firstName $lastName в научной работе: $scientificWork. Средний балл: $avarageMark. Стипендия составляет $stp сом");
  }

}
