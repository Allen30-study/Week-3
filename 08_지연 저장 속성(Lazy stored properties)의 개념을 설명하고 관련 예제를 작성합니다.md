## 지연 저장 속성(Lazy stored properties)의 개념을 설명하고 관련 예제를 작성합니다.

- 해당하는 속성이 인스턴스를 만들어 낼 때 초기화가 필요하지 않은 경우에 초기화를 지연시키는 것
    - 해당 속성에 접근할 때 초기화 되어 그제서야 메모리 공간이 생긴다.
    - 이미지와 같이 많은 메모리 공간을 차지하는 경우 등에 사용
- 지연 저장 속성으로 불필요한 성능 저하나 메모리 공간의 낭비를 줄일 수 있다.
- 생성자에서 초기화하지 않기 때문에 반드시 기본 값이 필요하다.

```swift
class Sweets {
    var boughtCookie: String = "cookie"
    lazy var wellcomeDrink: String = {
        return "Free Americano with \(boughtCookie)"
    } ()
}

let customer: Sweets = Sweets()
print(customer.boughtCookie, customer.wellcomeDrink)
```