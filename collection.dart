/* 
컬렉션은 책장같은 존재다
다양한 책들을 한 곳에 모아둘 수 있다

컬렉션은
순서대로 정리하는 List,
검색해서 뽑아오는 Map,
겹치는 책을 없애는 Set
이 있다
*/

void main() {
  learnList();
  reviewList();

  learnMap();

  learnSet();
}

void learnList() {
  List<String> pororoCharacterList = ['크롱', '루피', '포비', '페티', '뽀로로'];

  pororoCharacterList[3] = '패티';

  // add는 책들을 추가할 수 있다.
  pororoCharacterList.add('에디');

  // where은 원하는 책만 꺼내볼 수 있다.
  final newList = pororoCharacterList.where(
    (name) => name == '크롱' || name == '루피',
  );

  // map은 모든 책들의 제목을 바꿔줄 수 있다.
  final newCharacter = pororoCharacterList.map(
    (name) => '뽀롱뽀롱 $name',
  );

  // reduce는 책들을 순서대로 쌓아준다.
  final allMembers = pororoCharacterList.reduce(
    (value, element) => "$value, $element",
  );

  print(pororoCharacterList.length);
  print(pororoCharacterList);
  print(newList.toList());
  print(newCharacter.toList());
  print(allMembers);
  print('');
}

void reviewList() {
  List<String> nctMemberList = ['재현', '재민', '도영', '지성', '쿤'];

  nctMemberList.add('유타');

  final newList = nctMemberList.where(
    (element) => element == '도영' || element == '지성',
  );

  final newNct = nctMemberList.map((e) => "NCT멤버 $e");

  print(nctMemberList);
  print(newList.toList());
  print(newNct.toList());
  print('');
}

void learnMap() {
  Map<String, String> baseballTeam = {
    '한화': '이글스',
    'LG': 'TWINS',
    'KT': 'WIZ',
    '삼성': '라이온즈',
  };

  // 키를 넣으면 값을 알려준다.
  print(baseballTeam['한화']);

  // 키끼리 값끼리 출력
  print(baseballTeam.keys);
  print(baseballTeam.values);
  print('');
}

void learnSet() {
  Set<String> eaglesPlayers = {'채은성', '노시환', '정은원', '정은원'};

  print(eaglesPlayers);
  print(eaglesPlayers.contains('오그레디'));

  List<String> eaglesPlayers2 = ['오그레디', '오그레디', '채은성'];
  print(eaglesPlayers2.toSet());
}
