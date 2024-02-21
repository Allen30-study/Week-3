// 각 문제별 메모장
// Question 3
struct Pets {
    var name: String
    var age: Int
    var from: String = "Street"
}

var pet1 = Pets(name: "nana", age: 16) // let으로 선언하면 구조체의 속성은 변경 불가능하다
print(pet1) 

pet1.name = "lunar" // var로 인스턴스를 생성해야 해당 구조체 인스턴스의 속성을 변경할 수 있다.
pet1.age = 8
print(pet1)

// Question 4(1), 7
class Fruits {
    // 저장속성
    var name: String
    var amount: Int
    var price: Int
    var totalPrice: Int = 0 // 기본값을 가진 저장 속성

    // 저장속성을 초기화
    init(name: String, amount: Int, price: Int) {
        self.name = name
        self.amount = amount
        self.price = price
        self.updateTotalPrice() // 초기화 시 해당 메소드 호출
    }

    func updateTotalPrice() {
        self.totalPrice = self.amount * self.price // totalPrice 속성을 업데이트만 하면 되기 때문에 return문 생략
    }
}

let banana = Fruits(name: "banana", amount: 2, price: 2000)
print(banana.totalPrice) // totalPrice 출력 가능

// Question 4(2)
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


class Sweets {
    var boughtCookie: String = "cookie"
    lazy var wellcomeDrink: String = {
        return "Free Americano with \(boughtCookie)"
    } ()
}

let customer: Sweets = Sweets()
print(customer.boughtCookie, customer.wellcomeDrink)


// 타입속성
class Coffee {
    static var coffeeBean = "Columbia"
    var size: String

    init(size: String) {
        self.size = size
    }
}

print(Coffee.coffeeBean)

Coffee.coffeeBean = "Kenya"

print(Coffee.coffeeBean)


// 속성감시자 예제
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
