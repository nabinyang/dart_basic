/*
캐스케이드는 붕어빵(개체)을 만들고 바로 함수를 실행하는 거다
*/

class Fish {
  final String name;
  List<String> fishList;

  Fish(this.name, this.fishList);

  sayHi() {
    print('Hi, $name');
  }

  sayList() {
    for (String fish in fishList) {
      print(fish);
    }
  }
}

void main() {
  Fish jogi = Fish('조기', ['흑조기', '참조기', '흰조기'])
    ..sayHi()
    ..sayList();
}
