//: [Previous](@previous)

import Foundation

//집합 예제 01
//
//두 개의 세트를 입력받아, 그들의 교집합을 반환하는 함수를 작성하세요.
func  intersect(_ n1:Set<Int>, _ n2:Set<Int>) -> [Int]{
    let result = Array(n1.intersection(n2)).sorted()
        return result
}
// 예시코드:
let setA: Set<Int> = [1, 2, 3, 4, 5]
let setB: Set<Int> = [3, 4, 5, 6, 7]
let intersection = intersect(setA, setB)
print(intersection) // [3, 4, 5]


//집합 예제 02
//
//두 개의 세트를 입력받아, 그들의 합집합을 반환하는 함수를 작성하세요.
// 예시코드:
func unite(_ n1: Set<String>, _ n2: Set<String>) -> [String] {
    let result = Array(n1.union(n2)).sorted()
    return result
}


let setC: Set<String> = ["apple", "banana", "cherry"]
let setD: Set<String> = ["cherry", "durian", "elderberry"]
let union = unite(setC, setD)
print(union) // ["apple", "banana", "cherry", "durian", "elderberry"]


//집합 예제 03
//
//두 개의 세트를 입력받아, 첫 번째 세트에서 두 번째 세트의 원소들을 제외한 차집합을 반환하는 함수를 작성하세요.
// 예시코드:
func subtract(_ n1:Set<Double>, _ n2:Set<Double>) -> [Double] {
    let result = Array(n1.subtracting(n2))
    return result
}


let setE: Set<Double> = [1.0, 2.0, 3.0, 4.0, 5.0]
let setF: Set<Double> = [2.0, 4.0, 6.0]
let difference = subtract(setE, setF)
print(difference) // [1.0, 3.0, 5.0]



//집합 예제 04
//
//두 개의 세트를 입력받아, 그들이 서로소인지 판별하는 함수를 작성하세요.
//(서로소는 공통된 원소가 없는 것을 의미한다.)
// 예시코드:
func disjoint (_ n1:Set<Character>,_ n2:Set<Character>) -> Bool {
    let result = Array(n1.symmetricDifference(n2))
    if result.isEmpty {
        return true
    }else {
        return false
    }
}


let setG: Set<Character> = ["a", "b", "c"]
let setH: Set<Character> = ["d", "e", "f"]
let isDisjoint = disjoint(setG, setH)
print(isDisjoint) // true



func disjoint(_ set1: Set<Character>, _ set2: Set<Character>) -> Bool {
    let result = Array(set1.symmetricDifference(set2))
    return result.isEmpty
}

let setG: Set<Character> = ["a", "b", "c"]
let setH: Set<Character> = ["d", "e", "f"]
let isDisjoint = disjoint(setG, setH)
print(isDisjoint)  // 출력 결과: true


//집합 예제 05
//
//하나의 세트를 입력받아, 그 세트의 모든 부분집합을 배열로 반환하는 함수를 작성하세요.
// 예시코드:
let setI: Set<Int> = [1, 2, 3]
let subsets = getSubsets(setI)
print(subsets) // [[], [1], [2], [3], [1, 2], [1, 3], [2, 3], [1, 2, 3]]
