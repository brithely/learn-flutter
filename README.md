# learn-flutter


# 1. INTRODUCTION

## 0.Introduction
초반에는 플러터가 잘 될지 안될지 몰랐는데 (또한 구글에서는 여러가지 프로젝트를 중단한 경우가 많았다 / Flutter는 구글에서 만듬)

원래는 iOS, 안드로이드만 가능했는데, 이제는 멀티플랫폼 맥os, 윈도우 리눅스, IoT와 같은 임베디드 어플리케이션도 가능해지면서 현재는 엄청 파워풀하다.

## 1.Requirements
Flutter는 코드의 가독성을 위해 다양한 Dart 문법들을 사용하기 때문에 Dart의 문법을 익혀두는게 좋다.

## 2.Why Flutter
가성비로 따지면 플러터가 굉장하다. 어떠한 플랫폼이든 손쉽게 배포할 수 있다.

처음에는 ios, 안드로이드의 크로스 플랫폼이 프레임워크였는데, 이제는 다양한 기기들을 지원하게 되었다.
Flutter로 팀을 꾸린다는건, 다양한 플랫폼에 대응할 수 있다.

Flutter를 사용하는 거대 브랜드의 기업들을 볼 수 있다. 

구글 페이 -> flutter로 리뉴얼 하였다. 하면서 코드의 양도 줄이고 개발속도도 엄청 빠르게 되었다.
알리바바 -> flutter 등 여러가지 큰 기업들이 사용한다.


### 구글I/O의 Flutter 예시 앱
1. [Photobooth](https://photobooth.flutter.dev/#/) - Flutter만으로 사진 등 여러가지 기능등을 구현 할 수 있는데 굉장핟.
2. [flook.app](https://flokk.app/#/) - 연락P처 관련 앱인데, 굉장히 깔끔하게 잘 만들어져 있다.
3. [flutter-plasma](https://flutterplasma.dev/) - 다양한 애니메이션 효과들을 줄 수 있다.
4. [pin-ball](https://pinball.flutter.dev/) - flutter로 게임도 가능하다. 3D로 핀볼 게임을 구현했다. 엄청 부드럽게 되지는 않지만 이러한 것들을 구현 웹으로 구현 할 수 있다는게 대단한거 같다.

## 3.How Flutter Works
iOS, 안드로이드는 네이티브 앱들은 직접 운영체제와 통신을 하게 된다. Flutter는 그렇게 동작하지 않기 때문에 실제 iOS와 안드로이드 위젯을 사용할 수 없다. 

Dart로 이루어진 Flutter 프레임워크 위에 우리들의 코드들이 올라간다. 플러터 엔진은 c/c++로 구현되어 있으면, 화면에 진짜 그려주는 역할을 한다. Unity와 비슷한 방식으로 이루어져 있다.

iOS 및  알아서 UI가 렌더링 되는 형태로 되는것 같다. 예를들어 비디오 플레이어처럼 어떠한 OS든지 상관없이 UI를 렌더링 해주는 역할을 한다.  

Flutter앱은 각 언어들에 맞춰서 컴파일이 되며, 그 위의 runner라는 라이브러리가 엔진을 실행 시켜줘서 렌더링 하는 역할

runner -> engine -> OS

Flutter는 OS의 내장된 위젯을 사용할 수 없고, 엔진이 그려주는데로 사용하지만 네이티브한 위젯들과 비슷하게 구현된 디자인도 제공한다. 하지만 실제 네이티브 위젯들과는 차이가 있어서 어색하게 느껴진다. 하지만 이러한 OS의 네이티브를 사용하지만 못하지만 다양한 커스텀 UI를 사용할 수 있는 장점들이 있다.

다른 프레임워크들은 실제 OS와 통신하는 방식으로 되어 있지만, Flutter는 엔진위에 UI를 렌더링 하는 형태로 되어있는게 다른점이고, 엔진의 밑에 Embedder라는 계층이 존재하는데, iOS, 안드로이드, 윈도우 등 다양한 플랫폼에서 돌아 갈 수 있도록 해주는 역할이며 자바의 가상머신과 같이 생각하면 쉽게 이해 할 수 있다.


## 4.Flutter vs React Native
Flutter 게임 엔진처럼 동작한다는게 중요

Flutter는 OS와 직접 통신하지 않는다. 네이티브한 위젯들을 사용하지 못하는데 이러한 이유가 실제 OS가 아니라 엔진이 그려주기 때문이다. 

OS의 네이티브한 버튼들을 사용하면서 만들고 싶다고 한다면, React Native를 추천한다. RN은 실제 OS에서 렌더링이 되기 때문에 안드로이드와 iOS의 네이티브 한 위젯들을 사용할 수 있다.

오히려 아주 세밀한 디자인과 모든 요소들을 커스터마이징하게 사용한다면,  Flutter에서 더 쉽고 빠르게 만들수 있다. ex) Wonderous 앱 확인

-> iOS, 안드로이드 스러운 앱을 만들고 싶지 않다면 추천한다. 커스텀UI의 디자인을 가진 앱


# 2 HELLO FLUTTER

## 0.Installation

Flutter SDK

니코는 SDK 방식이 싫다. 그래서 다른 방식으로 설치

Windows에서는 chocolatey를 사용

자세한 설치는 chocolatey[https://chocolatey.org/]

```
choco install flutter
```

Mac에서는 Homebrew를 사용
```
brew install --cask flutter
```

웹 개발은 바로 할 수 있다. 브라우저가 있기 때문에

- 안드로이드 개발을 하려면 안드로이드 시뮬레이터 설치
- iOS 개발을 하려면 iOS 시뮬레이터를 설치 - 맥만 가능

## 1.Dart Pad
[DartPad](https://dartpad.dev/)
만약 설치하기 힘든 상황이면 dartpad를 사용해서 개발할 수 있다.
Flutter도 사용이 가능하기 때문에 샘플 개발을 해볼 수 있다.
 하지만 다른 파일을 만들수는 없기 때문에 한페이지에서 개발을 해야한다

## 2.Running Flutter
toonflix -> [README.md](https://github.com/brithely/learn-flutter/blob/main/toonflix/README.md) 정리

# 3.UI CHALLENGE
toonflix -> [README.md](https://github.com/brithely/learn-flutter/blob/main/toonflix/README.md#3ui-challenge) 정리
