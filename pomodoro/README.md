# pomodoro

A new Flutter project.

# 5.POMODORO APP

## 0.User Interface
- Flexible : 비율에 맞춰서 자동으로 맞춰준다.
- Expanded : Row와 같은 위젯을 확장 시켜준다.

## 1.Timer
- Timer : dart에서 사용하는 타이머이며, 정해진 시간에 함수를 실행 시켜주는 periodic이라는 method가 있다.
- 이거를 통해서 매초 줄어드는 1씩 줄어드는 함수를 호출하도록 설정

## 2.Pause Play
- isRunning이라는 bool 변수를 이용하여 버튼과 호출되는 함수를 새로 만들어서 현재 동작하는 timer를 멈추도록 한다.

## 3.Date Format
- onTick의 if문을 사용하여 0초일때 초기화 로직 추가
- Date 형태로 만들기 위해서 Duration으로 초를 시간형태로 변경 후 string의 split, subString을 통해 원하는 문자열 짤라서 사용
