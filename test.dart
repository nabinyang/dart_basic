class Food {
  final String foodType;

  Food({required this.foodType});

  void sayFoodType() {
    print('This food type is $foodType.');
  }
}

class Snack extends Food {
  final String name;
  final String brand;

  Snack({required super.foodType, required this.name, required this.brand});

  void sayIntroduce() {
    print('This is $brand\'s $name.');
  }
}

void main() {
  Snack ccobook = Snack(foodType: 'snack', name: '꼬북칩', brand: '오리온');

  ccobook.sayIntroduce();
  ccobook.sayFoodType();
}
