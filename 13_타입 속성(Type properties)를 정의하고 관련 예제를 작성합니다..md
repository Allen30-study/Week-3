## 타입 속성(Type properties)를 정의하고 관련 예제를 작성합니다.

- 타입 자체에 대한 작업 수행
- 모든 인스턴스에 공통적인 작업을 수행하거나 인스턴스 없이 수행되는 기능을 제공하는 데 사용

```swift
class Coffee {
    static var coffeeBean = "Columbia"
    var size: String

    init(size: String) {
        self.size = size
    }
}

print(Coffee.coffeeBean) // Columbia

Coffee.coffeeBean = "Kenya"

print(Coffee.coffeeBean) // Kenya
```