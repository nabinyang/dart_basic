class Youtuber {
  final name;

  Youtuber({required this.name});

  void sayName() {
    print('$name');
  }
}

void main() {
  Youtuber youngji = Youtuber(name: 'youngji');

  youngji.sayName();
}
