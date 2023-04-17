/*
객체지향 = 신이 인간을 만드는 거처럼 각각 개체를 만드는 거
클래스 안에서는 부르는 이름이 달라짐
함수 -> 메서드
*/

class BaseballTeam {
  final String? teamName;
  final int? ranking;

  // 함수의 매개변수 = 클래스의 생성자
  BaseballTeam(this.teamName, this.ranking);

  // 네임드 생성자
  BaseballTeam.fromMap(Map<String, dynamic> map)
      : this.teamName = map['inputTeamName'],
        this.ranking = map['inputRanking'];

  void sayName() {
    print('안녕하세요! 저희는 $teamName입니다!');
    // sayName함수에 teamName이라는 변수가 있다면 this라는 말을 붙여야함
    print('안녕하세요! 저희는 ${this.teamName}입니다!');
  }
}

void main() {
  // 본격적으로 개체를 만들어보자!
  BaseballTeam hanwhaEagles = BaseballTeam('한화이글스', 7);
  hanwhaEagles.sayName();

  BaseballTeam lgTwins =
      BaseballTeam.fromMap({'inputTeamName': '엘지트윈스', 'inputRank': 5});
  lgTwins.sayName();
}
