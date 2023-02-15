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
