## Swift에서 메서드의 메모리 구조를 설명합니다.

1. 코드: 앱 실행 시 모든 코드가 코드영역에 올라가 한 줄 씩 실행
2. 데이터: 어디서도 접근이 가능한 전역변수, 타입속성이 저장
3. 힙: 클래스의 객체나 클로저와 같은 참조 타입이 저장
4. 스택: 함수(메서드)의 실행 시 필요 데이터가 스택 프레임으로 생성되어 사용 완료 후 소멸됨