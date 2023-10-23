//: [Previous](@previous)

import Foundation


func solution(_ my_string: String) -> Int {
    var savedNum = 0
    var str = ""

    for i in my_string {
        if i.isNumber {
            str += String(i)
            print(str)
            
        }else {
        savedNum += Int(str) ?? 0
            str = ""
        }
    }
    savedNum += Int(str) ?? 0

    return savedNum
}

print(solution("aAb1B2cC34oOp"))




import Foundation
 
func solution(_ sides:[Int]) -> Int {
    var first = max(sides[0], sides[1])
    var second = min(sides[0], sides[1])
    var answer = 0
    
    answer += ((first - second+1)...first).count
    answer += ((first+1)..<(first+second)).count
 
    
    return answer
}
//print(solution([1, 2]))   // Output: 1
//print(solution([3, 6]))   // Output: 5
print(solution([11, 7]))  // Output: 13


//있으면 1
//없으면 2
func solution(_ spell:[String], _ dic:[String]) -> Int {
    var letterCheck = false
    for letter in spell {
        for word in dic {
            if word.contains(letter) {
                letterCheck = true
            }else {
                letterCheck = false
                break
            }
        }
        if letterCheck && letter.count == spell.count {
            return 1
        }
    }
    
    return 2
}

print(solution(["z", "d", "x"], ["def", "dww", "dzx", "loveaw"]))
