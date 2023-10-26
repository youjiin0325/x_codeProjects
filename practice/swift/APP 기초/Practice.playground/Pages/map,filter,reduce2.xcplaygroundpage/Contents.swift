//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"


//맵, 필터, 리듀스 예제 11
//
//주어진 문자열에서 모음(a, e, i, o, u)의 개수를 세는 함수를 작성하세요.
// 예시코드
let vo = ["a","e","i","o","u"]

func countVowels(_ word: String) -> Int {

    let newVoCnt = word.filter{ vo.contains(String($0))}.count
    return newVoCnt
    
}
let word = "swift"
let vowelCount = countVowels(word)
print(vowelCount) // 1





//맵, 필터, 리듀스 예제 12
//
//주어진 문자열에서 각 알파벳이 몇 번 나오는지 세는 함수를 작성하세요.

func countAlphabets(str: String) -> [String: Int] {
    return str.reduce(into: [:]) { (result, char) in
        let letter = String(char)
        result[letter, default: 0] += 1
    }
}

let word1 = "Hello2World!!"
print(countAlphabets(str: word1))




//맵, 필터, 리듀스 예제 13
//
//주어진 문자열에서 각 단어의 첫 글자를 대문자로 바꾸는 함수를 작성하세요.
// 예시코드
func capitalize(_ str: String)-> String {
    return str.components(separatedBy: " ")
        .map { $0.capitalized }
        .joined(separator: " ")
    
}

let sentence = "this is a test"
let capitalizedSentence = capitalize(sentence)
print(capitalizedSentence)      // "This Is A Test"




//맵, 필터, 리듀스 예제 14
//
//주어진 배열에서 각 요소를 역순으로 정렬하는 함수를 작성하세요.
//(컬렉션에서 제공하는 역순함수를 사용하지 않고 구현해 보세요.)
// 예시코드
//func reverse(_ array: [Int]) -> [Int] {
//  
//}
//
//let numbers = [1, 3, 4, 2, 5]
//let reversedNumbers = reverse(numbers)
//print(reversedNumbers)      // [5, 2, 4, 3, 1]




//맵, 필터, 리듀스 예제 15
//
//주어진 문자열에서 모든 소문자를 대문자로 바꾸는 함수를 작성하세요.
// 예시코드
func uppercase(_ str:String) ->String {
    return str.uppercased()
}
let word = "swift"
let uppercasedWord = uppercase(word)
print(uppercasedWord)       // "SWIFT"




//맵, 필터, 리듀스 예제 16
//
//주어진 문자열에서 모든 공백을 제거하는 함수를 작성하세요.
// 예시코드

func removeSpaces(_ str: String) -> String {
    let noSpace = str.filter { !$0.isWhitespace }
    return String(noSpace)
}
let sentence2 = "This is a test"
let noSpaceSentence =  removeSpaces(sentence2)
print(noSpaceSentence)      // "Thisisatest"

