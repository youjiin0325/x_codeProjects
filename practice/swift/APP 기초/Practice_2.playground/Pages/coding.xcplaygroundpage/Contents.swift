//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

func solution(_ score:[[Int]]) -> [Int] {
    var sumScore = [Int]()
    for score in score {
        let sum = score.reduce(0, +)
        sumScore.append(sum)
       
        print(sumScore)
    }
    return []
}

print(solution([[80, 70], [90, 50], [40, 70], [50, 80]]))
