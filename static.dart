/*
클래스 안에 있는 변수인데 저장이 된다!
*/

class Count {
  static int i = 0;

  Count() {
    i++;
    print(i);
  }
}

void main() {
  Count count1 = Count();
  Count count2 = Count();
}
