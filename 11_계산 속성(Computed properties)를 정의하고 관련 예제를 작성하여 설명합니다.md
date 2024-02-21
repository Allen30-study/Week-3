## 계산 속성(Computed properties)를 정의하고 관련 예제를 작성하여 설명합니다.

- 인스턴스들은 같은 계산 속성을 가지지만 그 값들은 인스턴스마다 차이가 있을 수 있다. 
```swift
class Fruits2 {
    var name: String
    var amount: Int
    var price: Int

    var totalPrice: Int {
        get {
            return self.amount * self.price 
        }

        set {
            // amount의 값이 0이 되는 것은 newValue와 price의 비율에 따라 결정되는 것이 아니라,
            // amount 자체를 직접 설정할 때만 발생하기 때문 by GPT4
            guard self.price != 0 else {
                print("newValue: \(newValue), price: \(self.price)")
                return 
            }
            
            self.amount = newValue / self.price
        }
    }

    init(name: String, amount: Int, price: Int) {
        self.name = name
        self.amount = amount
        self.price = price
    }
}

let apple = Fruits2(name: "apple", amount: 1, price: 2000)
apple.totalPrice = 6000
print(apple.totalPrice, apple.amount, apple.price)
```