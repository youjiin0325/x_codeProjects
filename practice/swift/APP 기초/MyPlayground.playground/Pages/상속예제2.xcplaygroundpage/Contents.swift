//: [Previous](@previous)

import Foundation
//
//var greeting = "Hello, playground"
////상속 예제 11
//// 다음 코드에서 P 클래스는 Q 클래스의 메서드를 오버로딩할 수 있다. (O/X)
//class Q {
//    func add(a: Int, b: Int) -> Int {
//        return a + b
//    }
//
//    func add(a: Double, b: Double) -> Double {
//        return a + b
//    }
//}
//
//class P: Q {
//    override func add(a: Int, b: Int) -> Int {
//        return a + b + 1
//    }
//}
//
////
//var p:Q = P()
//p.add(a: 1, b: 1) // -> 3 ?
//// ---------------> O
//
//
//
////상속 예제 12?????????
//// 다음 코드에서 R 클래스는 S 클래스와 T 클래스를 모두 타입 캐스팅할 수 있다. (O/X)
//class R {
//
//}
//
//class S {
//
//}
//
//class T {
//
//}
//
//let r = R()
//let s = S()
//let t = T()
////---->
//
//
//
////상속 예제 13
//// 다음 코드에서 U 클래스는 V 클래스의 메서드를 final로 선언하여 자식 클래스가 오버라이드할 수 없게 할 수 있다. (O/X)
//class V {
//    func sayBye() {
//        print("Bye")
//    }
//}
//
//class U: V {
//    override func sayBye() {
//        print("Bye Bye Bye")
//    }
//}
//// ------> X : 부모인 V 클래스에서  final 써서 상속을 막음
//
////상속 예제 14
////
////차량 클래스를 정의하고, 자동차와 오토바이 클래스를 차량 클래스로부터 상속받아서 구현하세요.
////차량 클래스는 모델과 색깔을 속성으로 가지고 있습니다.
////자동차 클래스는 문의 개수를, 오토바이 클래스는 헬멧의 유무를 추가로 속성으로 가지고 있습니다.
////자동차와 오토바이 클래스는 각각 운전하는 메서드를 오버라이딩해야 합니다.
//
//class Vehicle {
//    var model: String
//    var color: String
//    
//    init(medel: String, color: String) {
//        self.model = medel
//        self.color = color
//    }
//    func drive () {
//        
//    }
//}
////자동차
//class Car : Vehicle {
//    var doorNumber: Int
//    
//    init(model: String, color: String, doorNumber: Int) {
//        self.doorNumber = doorNumber
//        super.init(medel: model, color: color)
//    }
//    
//    override func drive() {
//        print("\(model) \(color) 자동차가 \(doorNumber)개의 문을 열고 달립니다.")
//    }
//}
////오토바이
//class Motorcycle : Vehicle {
//    var helmet : Bool
//    
//    init(model: String, color: String, helmet: Bool) {
//        self.helmet = helmet
//        super.init(medel: model, color: color)
//    }
//    
//    override func drive() {
//        if helmet == true {
//            print("\(model) \(color) 오토바이가 헬멧을 쓰고 달립니다")
//        }else {
//            print("\(model) \(color) 오토바이가 헬멧을 쓰지 않고 달립니다")
//        }
//    }
//    
//}
//
////예시
//let car: Vehicle = Car(model: "소나타", color: "검정", doorNumber: 4)
//let motorcycle: Vehicle = Motorcycle(model: "니노", color: "노랑", helmet: false)
//car.drive() // 소나타 검정 자동차가 4개의 문을 열고 달립니다.
//motorcycle.drive() // 니노 노랑 오토바이가 헬멧을 쓰고 달립니다. or // ~오토바이가 헬멧을 쓰지 않고 달립니다
//
//
//
////상속 예제 15
////
////음식 클래스를 정의하고, 피자와 파스타 클래스를 음식 클래스로부터 상속받아서 구현하세요.
////음식 클래스는 이름과 가격을 속성으로 가지고 있습니다.
////피자 클래스는 토핑을, 파스타 클래스는 소스를 추가로 속성으로 가지고 있습니다.
////피자와 파스타 클래스는 각각 주문하는 메서드를 오버라이딩해야 합니다.
//
//class Food {
//    var name : String
//    var price : Int
//    
//    init(name: String, price: Int) {
//        self.name = name
//        self.price = price
//    }
//    
//    func order() {
//        
//    }
//}
////피자
//class Pizza: Food {
//    var  topping : String
//    
//    init(name: String, price: Int, topping: String) {
//        self.topping = topping
//        super.init(name: name , price: 0)
//    }
//    
//    override func order() {
//        print("\(name) 피자에 \(name)피자를 주문하였습니다. 가격은 \(price)원입니다.")
//    }
//}
////파스타
//class Pasta: Food {
//    var sauce: String
//    
//    init(name: String, price: Int,sauce: String) {
//        self.sauce = sauce
//        super.init(name: name, price: 0)
//    }
//    
//    override func order() {
//        print("\(name) 파스타에 \(sauce) 소스를 선택하였습니다. 가격은 \(price)원입니다.")
//    }
//}
//
//// 예시:
//let cheesePizza: Food = Pizza(name: "치즈", price: 15000, topping: "치즈")
//let carbonara: Food = Pasta(name: "카르보나라", price: 12000, sauce: "크림")
//cheesePizza.order() // 치즈 피자에 치즈피자를 주문하였습니다. 가격은 15000원입니다.
//carbonara.order()   // 카르보나라 파스타에 크림 소스를 선택하였습니다. 가격은 12000원입니다.
//
//
////상속 예제 16
////
////동물 클래스를 정의하고, 고양이와 개와 오리 클래스를 동물 클래스로부터 상속받아서 구현하세요.
////동물 클래스는 이름과 나이를 속성으로 가지고 있습니다.
////고양이와 개와 오리 클래스는 각각 울음소리를 추가로 속성으로 가지고 있습니다.
////고양이와 개와 오리 클래스는 각각 울다라는 메서드를 오버라이딩해야 합니다.
//
//class Animal {
//    var name : String
//    var age : Int
//    
//    init(name: String, age: Int) {
//        self.name = name
//        self.age = age
//    }
//    
//    func cry() {
//        
//    }
//}
////고양이
//class Cat : Animal {
//    var meow : String
//    
//    init(name: String, age: Int,meow: String) {
//        self.meow = meow
//        super.init(name: name, age: 0)
//    }
//    override func cry() {
//        print("\(name)이(가) \(meow)라고 울어요.")
//    }
//}
////강아지
//class Dog : Animal {
//    var bark : String
//    
//    init(name: String, age: Int,bark: String) {
//        self.bark = bark
//        super.init(name: name, age: 0)
//    }
//    override func cry() {
//        print("\(name)이(가) \(bark)라고 울어요.")
//    }
//}
////오리
//class Duck : Animal {
//    var bark : String
//    
//    init(name: String, age: Int,bark: String) {
//        self.bark = bark
//        super.init(name: name, age: 0)
//    }
//    override func cry() {
//        print("\(name)이(가) \(bark)라고 울어요.")
//    }
//}
//
//// 예시:
//let kitty = Cat(name: "나비", age: 3, meow: "야옹")
//let puppy = Dog(name: "초코", age: 2, bark: "멍멍")
//let duck = Duck(name: "멋쟁", age: 2, bark: "꽥꽥")
//
//let animals: [Animal] = [kitty, puppy, duck]
//animals[0].cry()    // 나비이(가) 야옹라고 울어요.
//animals[1].cry()    // 초코이(가) 멍멍라고 짖어요.
//animals[2].cry()    // 멋쟁이(가) 꽥꽥라고 짖어요.
////for ani in animals { ani.cry() }
//
//
////열거형 예제 02
//
////열거형을 사용하여 동물의 종류와 이름을 나타내는 타입을 정의하고,
////동물의 배열을 만들어서 반복문으로 각 동물의 종류와 이름을 출력하는 함수를 작성하세요.
//
//
////enum Animal {
////    case dog(name:String )
////    case cat(name:String )
////    case bird (name:String )
////}
////
////func checkAnimal(animals : [Animal]) {
////    
////    for animal in animals {
////        
////        switch animal {
////        case .dog(let name) :
////            print("이 동물은 개이고 이름은 \(name)입니다.")
////        case .cat(let name) :
////            print("이 동물은 고양이이고 이름은 \(name)입니다.")
////        case .bird(let name) :
////            print("이 동물은 새이고 이름은 \(name)입니다.")
////        
////        }
////    }
////}
////
////
////
////// 예시:
////let animals = [Animal.dog(name: "바둑이"), Animal.cat(name: "나비"), Animal.bird(name: "짹짹이")]
////
////checkAnimal(animals: animals)
//
//// 출력결과
////이 동물은 개이고 이름은 바둑이입니다.
////이 동물은 고양이이고 이름은 나비입니다.
////이 동물은 새이고 이름은 짹짹이입니다.
//
//
////열거형 예제 03
////열거형을 사용하여 계절을 나타내는 타입을 정의하고,
////현재 날짜에 따라서 어떤 계절인지 출력하는 함수를 작성하세요.
////(날짜는 임의로 지정해도 됩니다.)
//
//enum Season: String {
//    case spring
//    case summer
//    case fall
//    case winter
//}
//
//func getSeason(date: (month: Int, day: Int)) -> Season {
//    switch date.month {
//    case 3...5:
//        return .spring
//    case 6...8:
//        return .summer
//    case 9...11:
//        return .fall
//    case 12, 1, 2:  // Adjusted for December, January, and February
//        return .winter
//    default:
//        print("날씨가 이상해")
//        return .winter  // You should return a default value
//    }
//}
//
//// 예시:
//let today = (month: 10, day: 17)
//let season = getSeason(date: today)
//
//print("오늘은 \(season)입니다.")  // 오늘은 autumn입니다.
//print("오늘은 \( getSeason(date: (month: 6, day: 17)) )입니다.")      // 오늘은 summer입니다.
//print("오늘은 \( getSeason(date: (month: 12, day: 15)) )입니다.")     // 오늘은 winter입니다.
//print("오늘은 \( getSeason(date: (month: 3, day: 1)) )입니다.")       // 오늘은 spring입니다.
//
////열거형 예제 04
////
////열거형을 사용하여 산술 연산자를 나타내는 타입을 정의하고,
////두 개의 정수와 산술 연산자를 매개변수로 받아서 해당 연산을 수행하고 결과를 반환하는 함수를 작성하세요.
//
//enum Calculate: String {
//    case divide
//    case add
//    case subtract
//    case multiply
//}
//
//func calculate(num1: Int, num2: Int, op:Calculate) ->Int {
//    
//    switch op {
//    case .divide:
//        return num1 / num2
//    case .add:
//        return num1 + num2
//    case .subtract:
//        return num1 - num2
//    case .multiply:
//        return num1 * num2
//    }
//    
//}
//
//
//// 예시:
//let result = calculate(num1: 10, num2: 5, op: .divide)
//
//print("결과는 \(result)입니다.")      //결과는 2입니다.
//print("결과는 \( calculate(num1: 10, num2: 5, op: .add) )입니다.")        //결과는 15입니다.
//print("결과는 \( calculate(num1: 10, num2: 5, op: .subtract) )입니다.")   //결과는 5입니다.
//print("결과는 \( calculate(num1: 10, num2: 5, op: .multiply) )입니다.")   //결과는 50입니다.
//
//
//
//
////열거형 예제 05
////
////열거형을 사용하여 음료의 종류와 가격을 나타내는 타입을 정의하고,
////음료의 배열을 만들어서 반복문으로 각 음료의 종류와 가격을 출력하는 함수를 작성하세요.
//
//enum Beverage {
//    case coffee(price:Int)
//    case tea(price:Int)
//    case juice(price:Int)
//    
//}
//
//func printTypeAndPrice(beverages: [Beverage]) {
//    
//    for beverage in beverages {
//        
//        switch beverage {
//        case .coffee(let price):
//            print("이 음료는 커피이고 가격은 \(price)원입니다.")
//        case .tea(let price):
//            print("이 음료는 차이고 가격은 \(price)원입니다.")
//        case .juice(let price):
//            print("이 음료는 주스이고 가격은 \(price)원입니다.")
//        }
//    }
//}
//
//// 예시:
//let beverages = [Beverage.coffee(price: 3000), Beverage.tea(price: 2000), Beverage.juice(price: 2500)]
//printTypeAndPrice(beverages: beverages)
//// 출력결과이 음료는 커피이고 가격은 3000원입니다.이 음료는 차이고 가격은 2000원입니다.이 음료는 주스이고 가격은 2500원입니다.
