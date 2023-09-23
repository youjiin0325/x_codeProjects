import UIKit

let numbers = [1,2,3,4,5, 6,7,8,9,10,11,12,13,14,15]

var onethounsandNumbers = [Int]()
for i in 1...1000 {
    onethounsandNumbers.append(i)
}

for num in numbers {
    if num % 3 == 0 {
        print("\(num) fizz")
         
    }else if num % 5 == 0 {
        
        print("\(num) buzz")
        
    }else {
        
        print(num)
    }
    
}
