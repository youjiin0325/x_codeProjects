//: [Previous](@previous)

import Foundation

print("heelo")
func solution(_ chicken:Int) -> Int {
    var count = 0
    var rest = chicken
    while rest >= 10 {
        count += rest / 10
        rest = rest / 10 + rest % 10
    }
    return count
}
print(solution(1081))
