## 계산 타입 속성(Computed type properties)을 설명하고 예제를 작성합니다.

- 정된 공식이나 조건에 기반한 동적 값을 제공할 때 사용
    - 환율 계산, 시스템 상태에 기반한 값, 다른 타입 속성에 기반한 값 등
    - 관련 값을 캡슐화 하는 용도
```swift
// GPT 4.0
struct Conversion {
    static var usdToEurRate: Double = 0.85
    
    // USD에서 EUR로의 환율을 기반으로 하는 계산 타입 속성
    static var eurToUsdRate: Double {
        get {
            return 1 / usdToEurRate
        }
        set(newRate) {
            usdToEurRate = 1 / newRate
        }
    }
}

print(Conversion.usdToEurRate) // 0.85 출력
print(Conversion.eurToUsdRate) // 1 / 0.85 = 약 1.1764705882352942 출력

Conversion.eurToUsdRate = 1.2
print(Conversion.usdToEurRate) // 1 / 1.2 = 0.8333333333333334 출력
```