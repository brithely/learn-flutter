# webtoon

A new Flutter project.

# 6.WEBTOON APP

## 0.Introduction
- official 웹툰 api가 없기 때문에 니코가 만든 교육용 api를 사용할 예정
https://webtoon-crawler.nomadcoders.workers.dev/
```
/today : 오늘 날짜의 웹툰 목록 정보
/{id} : 해당 ID의 웹툰 상세 상제 정보
/{id}/episodes : 해당 ID의 웹툰 에피소드 목록 정보
```

## 1.AppBar
- 특별한 내용은 없고 AppBar를 통해 위의 앱 타이틀을 입력 할 수 있다.

## 2.Data Fetching
- Widget은 식별은 위한 ID가 있는데 이게 위젯이 key를 가지고 있는 이유
- [pub.dev](https://pub.dev)에서 dart의 라이브러리를 찾아보고 다운로드 받을 수 있다.
- dart 라이브러리는 pubspec.yaml 파일에서 관리 할 수 있으며, 따로 명령어를 통해 설치도 가능하다
```
    dart pub add http
    flutter pub add http
```
- Future 타입은 미래에 반환될 타입을 알려준다.
- 보통 http 라이브러리를 비동기로 돌아가는데 동기적으로 하려면 await 키워드를 사용한다.


## 3.fromJson
- jsonDecode를 통해서 body의 문자열을 json형태의 map으로 변환 시켜 줄 수 있다.
- async에서 response를 할때에는 리턴 타입에 future를 넣어줘야 한다. 
- 비동기로 돌아가기 때문에 작업이 끝나면 반환되는 타입을 넣어줘야한다.

## 4.Recap
- 여러가지 방식으로 constructor를 구성 할 수 있다.
- named constructor로 바로 초기화 해주면 쉽게 사용할 수 있다.
- fromJson은 많이 사용하는 패턴이므로 잘 알고 있으면 좋다.

## 5.waitForWebToons
- future 데이터를 가져오는 방식이 두가지 있다.

## 6.FutureBuilder
- state 최대한 사용하지 않는것이 좋다.
- future를 사용하는 경우에는 const가 될 수 없다.
- FutureBuilder 위젯 -> future의 데이터를 기다려준다.
- 굳이 statful로 데이터를 기다리로 setState를 할 필요가 없이 FutureBuilder는 future를 기다릴 수 있다.

## 7.Listview
- CircularProgressIndicator : 돌아가는 로딩
- ListView : 자동으로 스크롤을 가진다
- ListView은 한번에 모든 데이터를 로딩하기 때문에 효율적이지 않다 -> 한번에 다 불러오면 메모리를 과도하게 사용됨
- ListView.builder를 사용할 수 있다 다양한 옵션들이 있고, 스크롤 방향도 정할 수 있다.
- itemBuilder가 필요한데 필요한 부분만 가져온다
- ListView.separated는 separateBuilder를 통해랜더링되는 아이템 사이에 위젯을 넣어줄수 있다.

## 8.Webtoon Card
- builder가 너무 많으면 extract method 기능을 사용하여 별도의 메소드로 빼주면 보기 좋다
- ListView위에 SizedBox를 그냥 넣으면 에러가 발생하는데, 이 경우는 ListView는 height가 정의되어 있지 않기 때문이다 (무한))

## 9.Detail Screen
- GestureDetector : 많은 제스처를 활용할 수 있는 위젯
- Navigator.push를 통해서 다른 위젯으로 애니메이션을 추가하여 넘겨준다.
- MaterialPageRoute : 하나의 페이지 처럼 보여준다
- fullscreenDialog를 통해 새로운 페이지를 떠지는것처럼 보여줄수 있다.
- Scaffold를 Detail에 같이 사용하면 자동으로 뒤로가기 버튼도 만들어준다