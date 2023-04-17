// 일단 try하고 오류를 catch하라는 뜻 ^^7

void main() {
  try {
    String name = 'nabeen';

    throw Exception('이름이 잘못되었습니다!');

    print(name);
  } catch (e) {
    print(e);
  }
}
