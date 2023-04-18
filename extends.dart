/*
상속자들...
클래스도 상속받는다..!

상속과 비슷한 인터페이스도 있다
extends 대신에 implements를 쓰면 되는데
다른 점은 상속할 때 모든 걸 다 재정의해야한다는거다

원하는 부분만 상속받는 mixin도 있다

함수, 매개변수만 지정하는 추상 클래스 (abstract)도 있다
자식 클래스는 implements를 써주면 된다
인스턴스화?가 필요없을 때 쓴다
지금은 잘 몰라도 됨
*/

class Animal {
  final String species;

  Animal(this.species);

  void sayIam() {
    print('I am $species');
  }
}

// Cat클래스는 Animal의 상속을 받아서 Animal의 변수랑 메서드를 쓸 수 있음!
class Cat extends Animal {
  final String catName;

  Cat(super.species, this.catName);

  void sayHi() {
    print('$catName, hi');
  }

  // 부모클래스에 있는 메서드 덮어쓸 수 있음!
  @override
  void sayIam() {
    print('I\'m $species');
  }
}

void main() {
  Cat meow = Cat('cat', 'meow');

  meow.sayHi();
  meow.sayIam();
}
