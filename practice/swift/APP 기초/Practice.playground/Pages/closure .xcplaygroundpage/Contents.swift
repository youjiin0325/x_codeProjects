//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"


//클로저 예제 01
//
//다음 코드에서 클로저의 반환 타입과 매개변수 타입을 추론하여 적어보세요.
let add: (Int, Int) -> Int = { $0 + $1 }
//-> 매개변수도 Int 고 반환타입도 Int 라고 명시했음



//클로저 예제 02
//
//다음 코드에서 클로저를 사용하여 배열의 모든 요소에 10을 곱한 새로운 배열을 만들어보세요.
let numbers = [1, 2, 3, 4, 5]

let newNumbers : ([Int]) -> [Int] = {numbers in
    return numbers.map{ $0 * 10 }
}
let newNum = newNumbers(numbers)
print(newNum)



//클로저 예제 03
//
//다음 코드에서 클로저를 사용하여 배열의 홀수 요소만 필터링하여 새로운 배열을 만들어보세요.
let oddNumbers : ([Int]) -> [Int] = { numbers in
    numbers.filter { $0 % 2 != 0 }
}
let newOdd = oddNumbers(numbers)
print(newOdd)
  

      
//클로저 예제 04
//
//다음 코드에서 클로저를 사용하여 배열의 요소들의 합을 구해보세요
let sumNubers = numbers.reduce(0) {return $0 + $1}
print(sumNubers)



//클로저 예제 05
//
//다음 코드에서 클로저를 사용하여 배열의 요소들을 문자열로 변환하여 새로운 배열을 만들어보세요.
let strNumberss = numbers.map { "\($0)" }
print(strNumberss)
