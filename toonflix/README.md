# toonflix


## 2.Running Flutter
- iOS Simulator를 실행중에 안되는 경우
    - impellerc 파일 때문에 실행이 안되는 경우가 있는데 이럴경우 finder에서 open한번 해주면 된다


## 3.Hello World
runApp 함수는 아무것도 하지 않지만 Widget이 레고처럼 위젯들을 조합해서 사용할 수 있다.

커뮤니티도 많고 공식 위젯들도 많이 존재한다. [Flutter Widgets](https://docs.flutter.dev/reference/widgets) 

너무 많기 때문에 위젯들을 어디서 찾을지만 알아두고 가져다가 사용하는 형태로 하는게 좋다

플러터에서 위젯은 레고 블럭처럼 사용하고 모든 위젯은 클래스로 이루어져 있다.

core Widget에서 상속
> StateleesWidget : 상속 받고 싶은 build 메소드를 무조건 구현
>
> build 메소드는 UI를 그려준다는 의미
>
> material : 구글 / cupertino : 애플
>
> 커스터마이즈 앱을 만들고 싶더라도 위의 앱 스타일을 지정해줘야 한다.
>
> flutter가 구글에서 만들었기 때문에 material이 조금 더 괜찮게 보인다.
>
> scaffold - 화면의 구조를 만들어주는 위젯

## 5.Classes Recap
Flutter에서 위젯을 지정할때마다 인스턴스화 해주기 때문에 new를 무조건 하지 않아도 된다.

class의 파라메터가 많을때는 named parameter를 사용하는게 좋은데 flutter의 위젯들이 named parameter로 되어 있다. 그래서 위젯들을 보면 필수가 아닌 파라메터와 기본값으로 들어가 잇는 파라메터들이 많다. VScode에서는 마우스를 오버해서 위젯들을 확인하면서 동작방식을 알아보자
```dart
class Player {
  String? name;

  Player({ this.name});
}

void main {
  var boro = Player(name: "boro");
}

```


# 3.UI CHALLENGE

## 0.Header
[예시 UI](http://dribbble.com/shots/19858341-Finnancial-Mobile-IOS-App)

다양한 위젯들을 사용하면서 익히는 것이 이번장의 핵심이다.
Dart와 VSC를 이용하면 마우스를 오버하여 해당 클래스의 내용들을 볼 수 있다.

다양한 위젯들을 활용해서 헤더를 만들수 있다.
색상도 플러터에서 제공하는 정의된 색상도 사용 가능, RGB 코드를 이용하여 사용가능


Column, SizedBox, Padding, Row등의 위젯들을 이용해 원하는 곳에 원하는 글자를 입력가능

## 1.Developer Tools
- ,를 이용하여 자동으로 포맷팅 되도록 사용 가능
- Column과 Row는 정렬을 가지고 있다
  - Row의 MainAxis 수평 Column 수직
  - Row의 CrossAxis 수직 Column 수평
- Color 사용 가능, RGB 코드로도 사용가능하고 표현방식만 다를뿐 같다.
Widget Inspector를 통해서 플러터의 UI가 어떻게 되어 있는지 확인할 수 있으며, 수정도 바로 해볼수가 있다.
- 어떤 구조로 되어있는지 한눈에 파악하기 쉽다.
- 크롬 개발자 도구 처럼 UI를 마우스를 통해서 어떤 부분을 수정해야 하는지 확인이 가능하다. 굉장히 좋은거 같다.
- 가이드라인을 통해 Padding과 모든 Column등을 확인가능
- 코드로만 UI를 그리는거에 걱정할 필요가 없다.

## 2.Button Section
- 비슷한 구조를 가지는 것을 재사용 가능한 위젯으로 만들수 있다.
- 요소를 서러 옆에 두려면 Row, 위 아래에 두려면 Column을 활용
- Container는 HTML의 Div같은 역할이며 border와 같이 div의 형태를 변경할 수 있다.

## 3.VSCode Settings
- 작업을 하다보면 파란색 물결 밑줄이 생기는데 이런 에러는 const를 사용하는게 좋다 의미
- const는 컴파일 하기전에 알아야 하는 상수롤 사용되는 변수들이다 -> 컴파일 후 메모리에 들어가는게 아니라 상수로 치환이 되기 때문에 최적화에 유용하다.
- 어떤건 상수가 될수 있고 될수 없다는걸 모두 기억하기 어렵기 때문에 VSCode settings를 수정

User Settings Json 추가
```json
    "editor.codeActionsOnSave": {
        "source.fixAll": true
    }
    // 저장할때 자동으로 const를 붙여주는 역할
     "dart.previewFlutterUiGuides": true
    // 코드에서 트리 형태로 가이드라인을 보여주기 때문에 가독성 up
```

## 4.Code ACtions
- vscode에서 전구 모양을 클릭하게 되는 경우 간단한 방법으로 코드를 리팩토링 할 수 있다.
- 정말로 쉽게 Padding, Container등 추가 할 수 있게 해준다 -> 커스텀 위젯도 가능하다.
- 또한 상위의 위젯들을 삭제하는 경우에도 유용하게 사용할 수 있다. command + . 을 통해 단축키로 사용가능
- 생산성이 정말 올라가는거 같다! 굳..

## 5.Reusable Widgets
- Extension 추천 Error Lens 에러를 알아보기 쉽게 해준다.
- UI가 넘치는 경우 자동으로 알려준다. 좋다~
- 코드 중복은 좋지 않기 때문에 재사용 가능한 위젯으로 만들면 좋다.
- Code Action을 통해 쉽게 위젯으로 만들어 줄수 있지만 실습에서는 사용하지 않음
- 다양한 shortcut들이 존재한다.

- const의 위젯을 사용한다면 안의 모든 프로퍼티도 const여야 한다 아니면 동적으로 받아와서 그리는 경우는 불가능하다.

## 6.Cards
- 배열의 const가 있는 경우 const가 불필요한 경우도 있으니 재선언이 필요
- 커스텀된 border는 시간이 걸리므로 패스


## 7.Icons and Transforms
- Icon 위젯을 통해 아이콘 생성 가능
- Flutter에서는 기본으로 제공되는 다양한 아이콘들이 존재함
- Tranform 위젯을 통해 크기, 위치등을 변경할 수 있음
- Container의 clipBehavior를 통해 넘어가는 위젯을 어떻게 표현할지 정할수 있음

- Flutter의 장점 중 하나는 이렇게 엔진 위에서 돌아가기 때문에 위젯을 통해 다양한 디자인을 사용가능


## 8.Reusable Cards
- clipBehavior의 hardEdge는 넘어가는 부분을 자름
- overFlow을 사용하기 위해서는 Padding 전에 SingleChildScrollView 위젯을 사용

## 9.Code Challenge
- order라는 프로퍼티를 사용해서 만들어보자