/*
이제 비동기에 대해 알아보자
비동기는 컴퓨터가 응답을 기다리지 않는 거다
데이터를 불러오는 시간동안 다른 걸 미리 처리한다던지 효율이 좋다

비동기 배우는 순서
Future -> async_and_await -> stream

Future는 미래에 받아올 값이다
가져오는데 시간이 오래걸리는 데이터가 있으면 future를 쓰면 된다
*/

void main() {
  addNumbers(1, 1);
  addNumbers2(1, 2);
}

// 코드 순서대로 실행이 안되면 헷갈릴 수 있다
// 그래서 async랑 await를 쓴다
// async는 함수이름 뒤에 쓰고, 기다리지 않는 함수라는 뜻을 가진다
// await는 기다리게 하고 싶은 함수 앞에 쓴다
Future<void> addNumbers(int a, int b) async {
  print('계산 시작!');

  // 일부러 딜레이를 주겠다
  await Future.delayed(Duration(seconds: 3), () {
    print('${a + b}');
  });

  // 딜레이 3초가 끝나기 전에 밑에 print가 실행되는 걸 볼 수 있다 (3초마저 낭비하지 않는 절약정신..!)
  print('계산 끝!');
}

Future<void> addNumbers2(int a, int b) async {
  print('계산 시작!!');

  await Future.delayed(Duration(seconds: 3), () {
    print('${a + b}');
  });

  print('계산 끝!!');
}
