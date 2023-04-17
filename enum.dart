/* 
enum은  상태 집합소이다
bool에는 True/false가 있듯이
여러 상태들을 모아놓을 수 있다
*/

enum lifeStatus { sleeping, eating, poop }

void main() {
  lifeStatus status = lifeStatus.poop;

  print(status);
}
