//: [Previous](@previous)

import Foundation

//열거형 예제 06
//열거형을 사용하여 방향을 나타내는 타입을 정의하고,
//현재 위치와 방향을 매개변수로 받아서 다음 위치를 반환하는 함수를 작성하세요.
//(위치는 x, y 좌표로 표현하고, 방향은 상, 하, 좌, 우로 표현합니다.)
//enum Direction {
//    case up
//    case down
//    case left
//    case right
//}
//
//func move(position:(x:Int , y: Int), direction:Direction) -> (x:Int, y:Int) {
//    
//    var x = position.x
//    var y = position.y
//    
//    switch direction {
//    case .up:
//        y += 1
//    case .down:
//        y -= 1
//    case .right:
//        x += 1
//    case .left:
//        x -= 1
//    }
//    return (x,y)
//}
//
//// 예시:
//let currentPosition = (x: 0, y: 0)
//
//var nextPosition = move(position: currentPosition, direction: .right)
//print("다음 위치는 (\(nextPosition.x), \(nextPosition.y))입니다.")  // 다음 위치는 (1, 0)입니다.
//
//nextPosition = move(position: currentPosition, direction: .left)
//print("다음 위치는 (\(nextPosition.x), \(nextPosition.y))입니다.")  // 다음 위치는 (-1, 0)입니다.
//
//nextPosition = move(position: currentPosition, direction: .up)
//print("다음 위치는 (\(nextPosition.x), \(nextPosition.y))입니다.")  // 다음 위치는 (0, 1)입니다.
//
//nextPosition = move(position: currentPosition, direction: .down)
//print("다음 위치는 (\(nextPosition.x), \(nextPosition.y))입니다.")  // 다음 위치는 (0, -1)입니다.
//
//
//
//
////열거형 예제 07
////
////열거형을 사용하여 주사위의 면을 나타내는 타입을 정의하고,
////랜덤한 주사위의 면을 반환하는 함수를 작성하세요.
//
//
//// CaseIterable -> 모든 케이스를 순화
//enum Dice : String, CaseIterable{
//    case one = "one"
//    case two = "two"
//    case three = "three"
//    case four = "four"
//    case five = "five"
//    case six = "six"
//    case seven = "seven"
//    case eight = "eight"
//    case nine = "nine"
//}
//
//func rollDice() -> Dice {
//    var randomNum = Int.random(in:0..<Dice.allCases.count)
//    
//    let randomDice = Dice.allCases[randomNum]
//    return randomDice
//}
//
//// 예시:
//let dice = rollDice()
//
//print("주사위의 면은 \(dice) 입니다.")   // 주사위의 면은 two입니다.
//
//// 실행할 때마다 다음 6가지 경우중 랜덤하게 출력
//// 주사위의 면은 one입니다.
//// 주사위의 면은 three입니다.
//// 주사위의 면은 four입니다.
//// 주사위의 면은 five입니다.
//// 주사위의 면은 six입니다.
//
//
////열거형 예제 08
////
////열거형을 사용하여 색상을 나타내는 타입을 정의하고,
////색상의 배열을 만들어서 반복문으로 각 색상의 이름과 RGB 값을 출력하는 함수를 작성하세요.
//
//enum Color {
//    case red(Int, Int, Int)
//    case green(Int, Int, Int)
//    case blue(Int, Int, Int)
//}
//
//func printColors(colors: [Color]) {
//    for color in colors {
//        switch color {
//        case .red(let r, let g, let b):
//            print("이 색상은 빨강이고 RGB 값은 (\(r), \(g), \(b))입니다.")
//        case .green(let r, let g, let b):
//            print("이 색상은 초록이고 RGB 값은 (\(r), \(g), \(b))입니다.")
//        case .blue(let r, let g, let b):
//            print("이 색상은 파랑이고 RGB 값은 (\(r), \(g), \(b))입니다.")
//        }
//    }
//}
//
//// 예시:
//let colors = [
//    Color.red(255, 0, 0),
//    Color.green(0, 255, 0),
//    Color.blue(0, 0, 255)
//]
//
//printColors(colors: colors)
//// 출력결과
////이 색상은 빨강이고 RGB 값은 (255, 0, 0)입니다.
////이 색상은 초록이고 RGB 값은 (0, 255, 0)입니다.
////이 색상은 파랑이고 RGB 값은 (0, 0, 255)입니다.
//
