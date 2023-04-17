/*
모르는 연산자 2개가 있다
null 연산자, 타입 비교 연산자.
*/

void main() {
  // 타입 뒤에 ?를 붙이면 "값이 없을 수도? 있음!"
  int? number1 = 3;

  // "is"를 써서 맞는지 아닌지 알 수 있다.
  print(number1 is double);
  print(number1 is! String);
}
