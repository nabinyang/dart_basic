/*
제네릭이 뭐지?
사실 우리는 List를 만들 때 이미 써봤다
List<String>에서 <>이 기호가 제네릭이다
*/

class Person<T> {
  final T thing;

  Person({required this.thing});
}

void main() {
  final nabeen = Person<List<int>>(thing: [5, 6, 7]);

  print(nabeen.thing.reduce((value, element) => value + element));
}
