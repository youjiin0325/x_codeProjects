import UIKit

import Foundation



//protocol MessageBulider {
//    var name: String { get }
//    func builderMessage() -> String
//}
//
//class MyClass : MessageBulider {
//    var name: String = ""
//    
//    init(name: String) {
//        self.name = name
//    }
//    
//    func builderMessage() -> String {
//        return  "Hello" + name
//    }
//    
//    
//}
//var yourClass = MyClass(name: "유지인")
//print(yourClass.name)

print("hello world")



//func solution(_ array:[Int], _ n:Int) -> Int {
//    var arrayNum = array[0]
//    
//    for num in array {
//        if abs(num - n) < abs(arrayNum - n) {
//            arrayNum = num
//        }
//    }
//    return arrayNum
//}
//print(solution([10, 11, 12], 13))


//func solution(_ order:Int) -> Int {
//    var num = String(order)
//    var cnt = 0
//    for i in num {
//        if i ==  "3" || i ==  "6" || i ==  "9" {
//            print(" 박수")
//            cnt += 1
//          
//        }
//    }
//    return cnt
//}
//
//print(solution(29423))

//func solution(_ cipher:String, _ code:Int) -> String {
//   
//    let result = cipher
//        .enumerated()
//        .compactMap{ (index, char) -> String? in
//        
//            if (index + 1) % code == 0 {
//                return String(char)
//            }
//            return nil
//            
//        }
//        .joined()
//    return result
//   
//}
//
//print(solution("dfjardstddetckdaccccdegk", 4))


//func solution(_ my_string:String) -> String {
//    var charArray = my_string
//    var newArray = ""
//    for i in charArray {
//       
//        if i != i.lowercased().first {
//                   newArray.append(i.lowercased())
//               } else {
//                   newArray.append(i.uppercased())
//               }
//    }
//    
//    return newArray
//}
//
//print(solution("cccCCC"))







