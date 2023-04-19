class Food {
  final String foodType;

  Food(this.foodType);

  void sayFoodType() {
    print('This food type is $foodType.');
  }
}

class Snack extends Food {
  final String name;
  final String brand;

  Snack(super.foodType, this.name, this.brand);

  void sayIntroduce() {
    print('This is $brand\'s $name.');
  }
}

void main() {
  Snack ccobook = Snack('snack', '꼬북칩', '오리온');

  ccobook.sayIntroduce();
  ccobook.sayFoodType();
}
