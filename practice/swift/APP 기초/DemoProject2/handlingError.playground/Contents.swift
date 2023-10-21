import UIKit


//에러 핸들링 예제 01
//온도 변환 함수
//섭씨 온도를 화씨 온도로 변환하는 함수를 작성하세요.
//단, 섭씨 온도가 -273.15도보다 낮으면 InvalidTemperature 에러를 발생시키세요.
//1.에러타입 선언
enum TemperatureError : Error {
    case invalidTemperature
}

//2.에러 던지기 : 공식: F = (C × 9/5) + 32
let invaildTemp = false

func celsiusToFahrenheit(_ n:Double) throws -> Double {
    var changedN = Double((n * 9/5 ) + 32)
    
    guard  changedN > -273.15 else {
        throw TemperatureError.invalidTemperature
    }
    return 0
}

// 예시:
do {
    let fahrenheit = try celsiusToFahrenheit(-300)
    print(fahrenheit)
} catch TemperatureError.invalidTemperature {
    print("Invalid temperature")
}
// Invalid temperature



//에러 핸들링 예제 02
//
//비밀번호 검증 함수
//사용자가 입력한 비밀번호가 다음 조건을 만족하는지 검증하는 함수를 작성하세요.
//최소 8자 이상
//최소 하나의 대문자, 소문자, 숫자, 특수문자 포함
//조건을 만족하지 않으면 PasswordError 에러를 발생시키세요.

print("hello")


