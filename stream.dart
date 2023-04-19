/*
future는 딱 한 번 데이터를 받을 때 쓰이고
stream은 계속 받을 때 쓰인다

Future를 반환하는 함수는 async로 선언하고 return으로 반환하면 된다
Stream을 반환하는 함수는 async*로 선언하고 yield로 반환한다
*/
import 'dart:async';

void main() {
  final controller = StreamController();
  final stream = controller.stream;

  // stream에 listen()을 실행하면 값이 들어올때마다 밑에꺼가 실행된다
  final streamListener1 = stream.listen((event) {
    print(event);
  });

  // 컨트롤러가 불려질 때마다 stream에 저장되고 listener가 실행된다
  controller.sink.add(1);
  controller.sink.add(2);
}
