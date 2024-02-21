## 속성 감시자의(Property observers) 개념을 설명하고 클래스 또는 구조체에서 속성 감시자를 사용하는 예제를 작성합니다.

- 저장속성의 변화 형식을 관찰
- 실직적으로는 메서드
- willSet, didSet 중 일반적으로 한 가지만 구현하면 된다. 보통 didSet을 구현하는 편!
    - willSet: 변수가 변하기 직전 호출
    - didSet: 변수가 변한 직후 호출
- 변수가 변하면 무엇이 업데이트 됐는지 사용

```swift
class Rename {
    var name: String = "Kelly" {
        willSet {
            print("나의 이름은 \(newValue)로 개명할 예정입니다.")
        }

        didSet {
            print("나의 이름은 \(oldValue)에서 \(name)로 개명했습니다.") // newValue 사용 못함: error: cannot find 'newValue' in scope
        }
    }
}

var myName = Rename()
myName.name = "Dorothy"
```