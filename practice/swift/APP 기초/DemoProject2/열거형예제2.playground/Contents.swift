import UIKit

var greeting = "Hello, playground"


//열거형 예제 06
//열거형을 사용하여 방향을 나타내는 타입을 정의하고,
//현재 위치와 방향을 매개변수로 받아서 다음 위치를 반환하는 함수를 작성하세요.
//(위치는 x, y 좌표로 표현하고, 방향은 상, 하, 좌, 우로 표현합니다.)
enum Direction {
    case up
    case down
    case left
    case right
}

func move(position:(x:Int , y: Int), direction:Direction) -> (x:Int, y:Int) {
    
    var x = position.x
    var y = position.y
    
    switch direction {
    case .up:
        y += 1
    case .down:
        y -= 1
    case .right:
        x += 1
    case .left:
        x -= 1
    }
    return (x,y)
}

// 예시:
let currentPosition = (x: 0, y: 0)

var nextPosition = move(position: currentPosition, direction: .right)
print("다음 위치는 (\(nextPosition.x), \(nextPosition.y))입니다.")  // 다음 위치는 (1, 0)입니다.

nextPosition = move(position: currentPosition, direction: .left)
print("다음 위치는 (\(nextPosition.x), \(nextPosition.y))입니다.")  // 다음 위치는 (-1, 0)입니다.

nextPosition = move(position: currentPosition, direction: .up)
print("다음 위치는 (\(nextPosition.x), \(nextPosition.y))입니다.")  // 다음 위치는 (0, 1)입니다.

nextPosition = move(position: currentPosition, direction: .down)
print("다음 위치는 (\(nextPosition.x), \(nextPosition.y))입니다.")  // 다음 위치는 (0, -1)입니다.




//열거형 예제 07
//
//열거형을 사용하여 주사위의 면을 나타내는 타입을 정의하고,
//랜덤한 주사위의 면을 반환하는 함수를 작성하세요.


// CaseIterable -> 모든 케이스를 순화
enum Dice : String, CaseIterable{
    case one = "one"
    case two = "two"
    case three = "three"
    case four = "four"
    case five = "five"
    case six = "six"
    case seven = "seven"
    case eight = "eight"
    case nine = "nine"
}

func rollDice() -> Dice {
    var randomNum = Int.random(in:0..<Dice.allCases.count)
    
    let randomDice = Dice.allCases[randomNum]
    return randomDice
}

// 예시:
let dice = rollDice()

print("주사위의 면은 \(dice) 입니다.")   // 주사위의 면은 two입니다.

// 실행할 때마다 다음 6가지 경우중 랜덤하게 출력
// 주사위의 면은 one입니다.
// 주사위의 면은 three입니다.
// 주사위의 면은 four입니다.
// 주사위의 면은 five입니다.
// 주사위의 면은 six입니다.


//열거형 예제 08
//
//열거형을 사용하여 색상을 나타내는 타입을 정의하고,
//색상의 배열을 만들어서 반복문으로 각 색상의 이름과 RGB 값을 출력하는 함수를 작성하세요.

enum Color {
    case red(Int, Int, Int)
    case green(Int, Int, Int)
    case blue(Int, Int, Int)
}

func printColors(colors: [Color]) {
    for color in colors {
        switch color {
        case .red(let r, let g, let b):
            print("이 색상은 빨강이고 RGB 값은 (\(r), \(g), \(b))입니다.")
        case .green(let r, let g, let b):
            print("이 색상은 초록이고 RGB 값은 (\(r), \(g), \(b))입니다.")
        case .blue(let r, let g, let b):
            print("이 색상은 파랑이고 RGB 값은 (\(r), \(g), \(b))입니다.")
        }
    }
}

// 예시:
let colors = [
    Color.red(255, 0, 0),
    Color.green(0, 255, 0),
    Color.blue(0, 0, 255)
]

printColors(colors: colors)
// 출력결과
//이 색상은 빨강이고 RGB 값은 (255, 0, 0)입니다.
//이 색상은 초록이고 RGB 값은 (0, 255, 0)입니다.
//이 색상은 파랑이고 RGB 값은 (0, 0, 255)입니다.

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



//해결못함--------------------------------------------->
// Password is missing an uppercase letter
// Password is missing a symbol

//에러 핸들링 예제 02
//
//비밀번호 검증 함수
//사용자가 입력한 비밀번호가 다음 조건을 만족하는지 검증하는 함수를 작성하세요.
//최소 8자 이상
//최소 하나의 대문자, 소문자, 숫자, 특수문자 포함
//조건을 만족하지 않으면 PasswordError 에러를 발생시키세요.

print("hello")

//1. 에러타입 선언
enum PasswordError: Error {
    case tooShort
    case missingUppercase
    case missingLowercase
    case missingNumber
    case missingSymbol
}

//2. 에러 던지기

let symbols = "!@#$%^&*()_+-=[]{}|;:,./<>?"


//3. 에러 함수
func validatePassword(_ password: String) throws {
    guard password.count >= 8 else {
        throw PasswordError.tooShort
    }
    
    
    guard password.rangeOfCharacter(from: .decimalDigits) == nil else {
        throw PasswordError.missingNumber
    }
    guard password.rangeOfCharacter(from: .uppercaseLetters) == nil else {
        throw PasswordError.missingUppercase
    }
    guard password.rangeOfCharacter(from: .lowercaseLetters) == nil else {
        throw PasswordError.missingLowercase
    }
    guard password.rangeOfCharacter(from: CharacterSet(charactersIn: symbols)) == nil else {
        throw PasswordError.missingSymbol
    }
}

//4. 에러 잡기
// 예시:
do {
    try validatePassword("abc123")
} catch let error as PasswordError {
    switch error {
    case .tooShort:
        print("Password is too short")
    case .missingUppercase:
        print("Password is missing an uppercase letter")
    case .missingLowercase:
        print("Password is missing a lowercase letter")
    case .missingNumber:
        print("Password is missing a number")
    case .missingSymbol:
        print("Password is missing a symbol")
    }
}

// Password is too short
// Password is missing an uppercase letter
// Password is missing a symbol

//해결못함--------------------------------------------->



//에러 핸들링 예제 03
//
//ATM 기계 클래스
//ATM 기계를 나타내는 클래스를 작성하세요.
//다음 속성과 메서드를 구현하세요.
//balance: 잔액을 나타내는 Double 타입의 속성. 초기값은 0이다.
//deposit(amount: Double): 입금하는 메서드.
//amount가 0보다 크면 잔액에 더하고 true를 반환한다.
//그렇지 않으면 false를 반환한다.
//withdraw(amount: Double) throws -> Double: 출금하는 메서드.
//amount가 0보다 크고 잔액보다 작거나 같으면 잔액에서 빼고 amount를 반환한다.
//amount가 0보다 작으면 NegativeAmount 에러를 발생시킨다.
//amount가 잔액보다 크면 InsufficientBalance 에러를 발생시킨다.


enum  ATMError : Error {
    case negativeAmount
    case insufficientBalance
    
}

class ATM {
    var balance: Double =  0.0
    
    init(_ balance: Double) {
        self.balance = balance
    }
    
    func deposit(amount: Double) -> Bool {
        guard amount > 0 else {
            return false
        }
        balance += amount
        return true
    }
    
    func withdraw(amount: Double) throws -> Double {
        guard amount > 0 else {
            throw ATMError.negativeAmount
        }
        guard amount <= balance else {
            throw ATMError.insufficientBalance
          }
        
        balance -= amount
        return balance
        }
    }


// 예시:
let atm = ATM(0)
atm.deposit(amount: 1000)
print(atm.balance)              // 1000.0

do {
    let cash = try atm.withdraw(amount: 500)
    print(cash)                 // 500.0
} catch let error as ATMError {
    switch error {
    case .negativeAmount:
        print("Cannot withdraw a negative amount")
    case .insufficientBalance:
        print("Cannot withdraw more than balance")
    }
}

print(atm.balance)              // 500.0



//에러 핸들링 예제 04
//
//계산기 구조체
//사칙연산을 수행하는 계산기를 나타내는 구조체를 작성하세요.
//다음 속성과 메서드를 구현하세요.
//result: 계산 결과를 나타내는 Double 타입의 속성. 초기값은 0이다.
//add(_ number: Double): result에 number를 더하는 메서드.
//subtract(_ number: Double): result에 number를 빼는 메서드.
//multiply(_ number: Double): result에 number를 곱하는 메서드.
//divide(_ number: Double) throws: result에 number를 나누는 메서드.
//단, number가 0이면 DivisionByZero 에러를 발생시킨다.

enum CalculatorError :Error{
    case divisionByZero
}

//enum CalOperator  {
//    case add(num:Int)
//    case subtract(num:Int)
//    case multiply(num:Int)
//    case divide(num:Int)
//}


struct Calculator {
    var result: Double = 0.0
    
    init(_ result: Double) {
        self.result = result
    }
    
   mutating  func add(_ number: Double){
       result = result + number
        
    }
    
    mutating func subtract(_ number: Double){
        result = result - number
    }
    
    mutating func multiply(_ number: Double) {
        result = result * number
    }
    
    mutating func divide(_ number: Double) throws {
            guard number != 0 else {
                throw CalculatorError.divisionByZero
            }
            result = result / number
        }
    
}



// 예시:
var calculator = Calculator(0)
calculator.add(10)
print(calculator.result)        // 10.0

calculator.subtract(3)
print(calculator.result)        // 7.0

calculator.multiply(2)
print(calculator.result)        // 14.0

do {
    try calculator.divide(7)
    print(calculator.result)    // 2.0
} catch CalculatorError.divisionByZero {
    print("Cannot divide by zero")
}



//에러 핸들링 예제 05
//
//도서관 클래스
//도서관을 나타내는 클래스를 작성하세요.
//다음 속성과 메서드를 구현하세요.
//books: 책들을 나타내는 [String] 타입의 속성. 초기값은 빈 배열이다.
//limit: 대출 가능한 책의 수를 나타내는 Int 타입의 속성. 초기값은 3이다.
//borrow(book: String) throws -> String: 책을 대출하는 메서드.
//book이 books에 있고 limit보다 적게 대출했다면 book을 books에서 제거하고 "(book)을 대출했습니다."라는 문자열을 반환한다.
//book이 books에 없다면 BookNotFound 에러를 발생시키고, limit 이상으로 대출했다면 LimitExceeded 에러를 발생시킨다.

enum LibraryError : Error {
    case bookNotFound
    case limitExceeded
    
}


class Library {
    
    var books = [String]()
    var limit :Int = 3
    
    init(books: [String], limit: Int) {
        self.books = books
        self.limit = limit
    }
    
    func borrow(books: [String]) throws -> String {
            
            guard books.count <= limit else {
                throw LibraryError.limitExceeded
            }
            
            for book in books {
                guard self.books.contains(book) else {
                    throw LibraryError.bookNotFound
                }
                
                if let index = self.books.firstIndex(of: book) {
                    self.books.remove(at: index)
                    return "\(book)를 대출했습니다."
                }
            }
            
            throw LibraryError.bookNotFound
        }
    }



let library = Library(books: ["Harry Potter", "The Little Prince", "The Hobbit"], limit: 2)

do {
    let result = try library.borrow(books: ["Harry Potter", "The Little Prince"])
    print(result)
} catch LibraryError.bookNotFound {
    print("책을 찾을 수 없습니다.")
} catch LibraryError.limitExceeded {
    print("대출 한도를 초과했습니다.")
}
