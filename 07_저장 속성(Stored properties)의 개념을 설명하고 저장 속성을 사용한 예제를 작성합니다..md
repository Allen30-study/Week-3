## 저장 속성(Stored properties)의 개념을 설명하고 저장 속성을 사용한 예제를 작성합니다.

- 저장속성: 클래스나 구조체의 틀로 만든 인스턴스가 가지는 고유의 데이터 저장 공간
    - 변수, 상수로 선언 가능
    - 객체 초기화 시에 각 저장 속성은 반드시 값을 가지고 있어야 하기 때문에, 클래스나 구조체에서 저장 속성을 만들 때 기본값을 설정하거나 생성자에서 설정, 혹은 옵셔널 타입으로 선언하여 nil을 초기값으로 갖을 수 있다.
    
    ```swift
    class Fruits {
        // 저장속성
        var name: String
        var amount: Int
        var price: Int
        var totalPrice: Int = 0 // 기본값을 가진 저장 속성
    ›
        // 저장속성을 초기화
        init(name: String, amount: Int, price: Int) {
            self.name = name
            self.amount = amount
            self.price = price
            self.updateTotalPrice() // 초기화 시 해당 메소드 호출
        }
    
        func updateTotalPrice() {
            self.totalPrice = self.amount * self.price // return을 사용할 필요 없음 !! 업데이트만 시키면 되기 때문
        }
    }
    
    let banana = Fruits(name: "banana", amount: 2, price: 2000)
    print(banana.totalPrice) // totalPrice 출력 가능
    ```