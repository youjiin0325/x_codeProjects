//: [Previous](@previous)

import Foundation


//맵, 필터, 리듀스 예제 01------------------------------>
//
//주어진 배열에서 홀수만 골라내서 제곱한 후 모두 더하는 함수를 작성하세요.
func sumOfSquaresOfOdds(array: [Int]) -> Int {
    array.filter{ $0 % 3 == 0 }.map{ $0 * $0}.reduce(0, + )
}
let array = [1, 2, 3, 4, 5, 6, 7, 8, 9]
let result = sumOfSquaresOfOdds(array: array)
print(result)




//맵, 필터, 리듀스 예제 02------------------------------>
//
//주어진 문자열에서 모음을 제거하고 대문자로 바꾼 후 역순으로 출력하는 함수를 작성하세요.
let vo = ["a","e","i","o","u"]
func reverseWithoutVowels(string: String) -> String {
    let filteredStr = string.filter { !vo.contains(String($0)) }
    return String(filteredStr.uppercased().reversed())
}

let string = "Hello World"
let removedVo = reverseWithoutVowels(string: string)
print(removedVo)




//맵, 필터, 리듀스 예제 03------------------------------>
//
//주어진 딕셔너리에서 값이 짝수인 키들의 합을 구하는 함수를 작성하세요.
func sumOfKeysWithEvenValues(dictionary: [String: Int]) -> Int {
    let evenNum = dictionary.values.filter{ $0 % 2 == 0 }.map{  $0 }
    let evenSum = evenNum.reduce(0,+)
    return evenSum
}

let dictionary = ["a": 1, "b": 2, "c": 3, "d": 4, "e": 5]
let dictResult = sumOfKeysWithEvenValues(dictionary: dictionary)
print(dictResult)



//맵, 필터, 리듀스 예제 04------------------------------>
//
//주어진 배열에서 가장 큰 수와 가장 작은 수의 차이를 구하는 함수를 작성하세요.
func differenceBetweenMaxAndMin(array: [Int]) -> Int {
    guard let maxNum = array.max(), let minNum = array.min() else {
        
        return 0
    }
    return maxNum - minNum
}

let array1 = [10, 20, 30, 40, 50]
let newArray = differenceBetweenMaxAndMin(array: array1)
print(newArray)




//맵, 필터, 리듀스 예제 05------------------------------>
//
//주어진 배열에서 각 요소의 개수를 세어서 딕셔너리로 반환하는 함수를 작성하세요.
// 예시코드
func countElements(array: [String]) -> [String: Int] {
    var newDict = [String:Int]()
    
    for element in array {
            if let count = newDict[element] {
                newDict[element] = count + 1
            } else {
                newDict[element] = 1
            }
        }
        
        return newDict
    
}
let array2 = ["a", "b", "a", "c", "b", "d"]
let result2 = countElements(array: array2)
print(result2)




//맵, 필터, 리듀스 예제 06------------------------------>
//
//주어진 배열에서 가장 많이 등장하는 요소를 반환하는 함수를 작성하세요.
//만약 동률이 있다면 무작위로 하나를 반환.
// 예시코드
func mostFrequentElement(array: [String]) -> String? {
   
    var newDict = [String:Int]()
    
    for element in array {
            if let count = newDict[element] {
                newDict[element] = count + 1
            } else {
                newDict[element] = 1
            }
        }
    let maxCnt = newDict.values.max()
    let freMostCnt = newDict.filter{ $0.value == maxCnt }.map{ $0.key}
    
    if let random = freMostCnt.randomElement() {
        return random
    }
    return nil
}

let array3 = ["a", "b", "a", "c", "b", "d", "c"]
if let result3 = mostFrequentElement(array: array3) {
    print(result3)
} else {
    print("배열이 비어있거나 유효한 요소가 없습니다.")
}




//맵, 필터, 리듀스 예제 07------------------------------>
//
//주어진 배열에서 각 요소의 앞뒤로 "*"을 붙여서 새로운 배열을 반환하는 함수를 작성하세요.
// 예시코드
func addStars(array: [String]) -> [String] {
    
    let stararray = array.map{"*" + $0 + "*"}
    return stararray
}
let array4 = ["a", "b", "c"]
let newStar = addStars(array: array4)
print(newStar)





//맵, 필터, 리듀스 예제 08------------------------------>
//
//주어진 배열에서 3의 배수만 골라내서 그 합을 구하는 함수를 작성하세요.
// 예시코드
func sumOfMultiplesOfThree(array: [Int]) -> Int {
    let num3 = array.filter{ $0 % 3 == 0 }.reduce( 0,+)
    return num3
}
let array5 = [1, 2, 3, 4, 5, 6, 7, 8, 9]
let arrayFor3 = sumOfMultiplesOfThree(array: array5)
print(arrayFor3)




//맵, 필터, 리듀스 예제 09------------------------------>
//
//주어진 배열에서 각 요소를 두 번 반복해서 새로운 배열을 반환하는 함수를 작성하세요.
// 예시코드
func repeatTwice(array: [String]) -> [String] {
    let twiceArray = array.flatMap { Array(repeating: $0, count: 2) }
    return twiceArray
}
let array6 = ["a", "b", "c"]
let twiceArrayY = repeatTwice(array: array6)
print(twiceArrayY)





//맵, 필터, 리듀스 예제 10------------------------------>
//
//주어진 배열에서 각 요소의 길이를 새로운 배열로 반환하는 함수를 작성하세요.
// 예시코드
func lengthsOfElements(array: [String]) -> [Int] {
    let arrayCnt = array.map{ $0.count}
    return arrayCnt
}

let array7 = ["apple", "banana", "cherry"]
let countArray = lengthsOfElements(array: array7)
print(countArray)
