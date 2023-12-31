//: [Previous](@previous)

import Foundation

//딕셔너리 예제 01
//
//다음과 같은 딕셔너리가 주어졌을 때, 가장 많이 등장하는 값(value)을 출력하는 함수를 작성하세요.

// 예시 코드

func mostFrequentValue(dict: [String: Int]) -> Int {
    var countNum : [Int:Int] = [:]
    for (_, value) in dict {
           countNum[value, default: 0] += 1
       }
    var mostFrequentValue: Int = 0
    var maxCount = 0
    
    for (key, value) in countNum {
        if value > maxCount {
            maxCount = value
            mostFrequentValue = key
        }
    }
    return  mostFrequentValue
}

let dict1 = ["a": 1, "b": 2, "c": 3, "d": 2, "e": 2]
mostFrequentValue(dict: dict1)  // 2



//딕셔너리 예제 02
//
//다음과 같은 딕셔너리가 주어졌을 때, 키(key)와 값(value)의 순서를 바꾼 새로운 딕셔너리를 반환하는 함수를 작성하세요.
//(단, 값(value)이 중복되는 경우는 고려하지 않는다.)
// 예시 코드
//func reverseKeyValue(dict: [String: String]) -> [String: String] {
//    // 코드를 작성
//    var newDict : [String:String] = [:]
//    
//    for (key, value) in dict  {
//        newDict[value] = key
//        
//    }
//    //???? 왜 반대로 나오지..........?일단 sorted 씀
//    var sortedDict = newDict.sorted(by: > )
//    return newDict
//    
//}
//let dict2 = ["apple": "red", "banana": "yellow", "grape": "purple"]
//let result = reverseKeyValue(dict: dict2)
//print(result)       // ["red": "apple", "yellow": "banana", "purple": "grape"]




//딕셔너리 예제 03
//
//다음과 같은 딕셔너리가 주어졌을 때, 특정한 값(value)을 가진 모든 키(key)의 리스트(list)를 반환하는 함수를 작성하세요.
// 예시 코드
func keysWithValue(dict: [String: Int], value: Int) -> [String] {
    // 코드를 작성
    var specificNum : [String] = []
    
    for (key, avalue) in dict {
     
            if value == avalue {
                specificNum.append(key)
        }
    }
    return specificNum
    
}

let dict3 = ["a": 1, "b": 2, "c": 3, "d": 2, "e": 1]
let result = keysWithValue(dict: dict3, value: 2)
print(result)       // ["d", "b"]




//딕셔너리 예제 04
//
//다음과 같은 딕셔너리가 주어졌을 때, 모든 키(key)와 값(value)의 쌍(pair)을 문자열(string)로 변환하여 출력하는 함수를 작성하세요.
//(단, 키(key)와 값(value) 사이에는 콜론(:)을, 쌍(pair) 사이에는 쉼표(,)를 넣어야 한다.)
// 예시 코드
func dictToString(dict: [String: Any]) -> String {
        var str:String = ""
        for (key,value) in dict{
            str += "\(key):\(value),"
        }
        //마지막 반점 빼기
        str.removeLast()
        return str
    }


let dict4: [String: Any] = ["name": "Alice", "age": 20, "gender": "female"]
let result = dictToString(dict: dict4)
print(result)       // age:20, gender:female, name:Alice

//다른사람 예제
//func dictToString(dict: [String: Any]) -> String {
//    return dict.map { "\($0.key):\($0.value)" }.sorted().joined(separator: ",")
//}




//딕셔너리 예제 05
//
//다음과 같은 딕셔너리가 주어졌을 때, 모든 키(key)의 합(sum)과 모든 값(value)의 합(sum)을 각각 구하여 튜플(tuple)로 반환하는 함수를 작성하세요.
// 예시 코드
//func sumOfKeysAndValues(dict: [Int: Int]) -> (Int, Int) {
//    // 코드를 작성
//    var valueSum = 0
//    var keySum = 0
//    
//    for (k, v) in dict {
//        valueSum += v
//        keySum += k
//    }
//    return (keySum, valueSum)
//}
//
//let dict5 = [1: 10, 2: 20, 3: 30]
//let result = sumOfKeysAndValues(dict: dict5)
//print(result)       // (6, 60)



//딕셔너리 예제 06 (난이도 쉬움)
//
//다음과 같은 딕셔너리가 주어졌을 때, 키가 "name"인 값을 출력하는 코드를 작성하세요.

let person: [String: Any] = ["name": "Kim", "age": 25, "job": "programmer"]
person["name"] ?? "Unknown"




//딕셔너리 예제 07 (난이도 쉬움)
//
//다음과 같은 딕셔너리가 주어졌을 때, 모든 키와 값을 한 줄씩 출력하는 코드를 작성하세요.

let fruit = ["apple": 3, "banana": 5, "orange": 2]


for (key, value) in fruit {
 print("\(key):\(value)")
}





//딕셔너리 예제 08
//
//다음과 같은 딕셔너리가 주어졌을 때, 값이 높은 점수 를 찾아서 출력하는 코드를 작성하세요.
//값이 같은 키가 여러 개 있으면 아무거나 출력해도 됩니다.
let scores = ["math": 90, "english": 85, "science": 95]

//var hScore = scores.values.sorted()
//print(hScore[2])
var max = (key :"", value:0)
for (key, value) in scores {
    if value > max.value {
     max = (key,value)
    }
}
print(max.key)




//딕셔너리 예제 09
//
//다음과 같은 딕셔너리가 주어졌을 때, 키와 값을 서로 바꾼 새로운 딕셔너리를 만드는 코드를 작성하세요.
//(단, 기존의 딕셔너리는 변경하지 않는다.)
let colors = ["red": "#FF0000", "green": "#00FF00", "blue": "#0000FF"]
var newColorList : [String: String] = [:]
for (k, v) in  colors { newColorList[v] = k }
print(newColorList)




//딕셔너리 예제 10
//
//다음과 같은 두 개의 딕셔너리가 주어졌을 때, 두 딕셔너리의 공통된 키의 키와 값을 출력하는 코드를 작성하세요.
let dict1 = ["a": 1, "b": 2, "c": 3]
let dict2 = ["b": 2, "c": 4, "d": 5]

var newDict : [String : Int] = [:]

for (key,value) in dict1 {
    //키만 동일할 때
    if let value2 =  dict2[key]  {
        print("\(key):\(value)")
        print("\(key):\(value2)")
    }
        
}

for (key,value) in dict1 {
    //키와 값 모두 동일한 형태
    if dict2[key] == value {
        print("\(key):\(value)")
    }
        
}




//딕셔너리 예제 11
//
//다음과 같은 딕셔너리가 주어졌을 때, 값이 짝수인 키와 값을 삭제하는 코드를 작성하세요.
var even = ["a": 2, "b": 3, "c": 4, "d": 5]

for (key, value) in even {
    if value % 2 == 0 {
       even[key] = nil
    }
}
print(even)




//딕셔너리 예제 12
//
//다음과 같은 딕셔너리가 주어졌을 때, 키를 알파벳 순서로 정렬하여 출력하는 코드를 작성하세요.
let countries = ["KR": "South Korea", "US": "United States", "JP": "Japan", "CN": "China"]

var sortedKeys = countries.keys.sorted()
print(sortedKeys)
