# flutter_3_7_sample

flutter 3.7 & dart 3.0 테스트 코드

## Getting Started

1.플러터 버전 변경
flutter channel master
flutter upgrade
flutter pub get

2.예외 처리 추가(컴파일 오류 예외처리)

파일명:analysis_options.yaml

analyzer:
  enable-experiment:
    - records
    - patterns
    - sealed-class

3.실행 코드 추가(런타임 오류 예외처리)

vscode 설정 - Dart: Flutter Run Additional Args - 항목추가

--enable-experiment=records
--enable-experiment=patterns
--enable-experiment=sealed-class
