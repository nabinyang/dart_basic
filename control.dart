/*
제어문에는 네개가 있다
긴지 아닌지 판단하는 if, 
진짜 스위치를 상상하면 좋은 switch, 
몇 회를 채울 때까지 반복하는 for, 
조건을 맞출 때까지 반복하는 while.
*/

enum Status { wining, drawing, losing }

void main() {
  // if는 패쓰
  learnSwitch();
  learnFor();
  learnWhile();
}

void learnSwitch() {
  Status status = Status.wining;

  switch (status) {
    case Status.wining:
      print('오케이 잘하고 있어!!');
      break;
    case Status.drawing:
      print('제발.. 한 점수만 내자');
      break;
    case Status.losing:
      print('아니 왤케 못해??');
      break;
    default:
      print('경기 시간이 아닙니다.');
  }
}

void learnFor() {
  List<String> numberList = ['S1', 'S2', 'S3'];

  for (int i = 0; i < 3; i++) {
    print(i);
  }

  for (String number in numberList) {
    print(number);
  }
}

void learnWhile() {
  List<int> ageList = [1, 7, 61, 84, 32, 20];
  int count = 0;

  while (count < ageList.length) {
    print(ageList[count]);
    count++;
  }
}
