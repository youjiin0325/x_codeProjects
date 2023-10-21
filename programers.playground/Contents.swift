import UIKit

var greeting = "Hello, playground"

func solution(_ array:[Int]) -> Int {
   
    var cnt : Int  = 0
    
    for i in array {
        let digits = String(i).compactMap{Int(String($0))}
        for digit in digits {
            if digit == 7 {
                cnt += 1
            }
        }
    }
    return cnt
    
}

print(solution([7, 77, 17]))


func solution(_ my_str: String, _ n:Int) -> [String] {
    var charArray  = ""
    var charAr : [String] = []
    var my_str = my_str
    
    for i in my_str {
        charArray.append(String(i))
        
        if charArray.count == n{
            charAr.append(charArray)
            charArray = ""
        }
        if !charArray.isEmpty {
            charAr.append(charArray)
        }
    }
    return charAr
}

print(solution("abcdef123", 3))


func solution(_ array:[Int], _ n:Int) -> Int {
    var numCnt = 0
    for i in array {
        if i == n {
            numCnt += 1
        }
    }
    return numCnt
}

print(solution([1, 1, 2, 3, 4, 5]),1)


func solutionn(_ array:[Int], _ height:Int) -> Int {
    var heightCnt = 0
    
    for i in array {
        if i > height {
            heightCnt += 1
        }
    }
    return heightCnt
}


print(solutionn([149, 180, 192, 170], 167))
