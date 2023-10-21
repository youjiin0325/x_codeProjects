

import Foundation



//동시성 예제 01

/**async let을 사용하여 두 개의 비동기 작업을 동시에 실행하고 결과를 출력하는 함수를 작성해보세요.
1...100 더하는 함수

1...50 더하는 함수 1개 작업을 실행
51...100 더하는 함수 1개 작어블 실행

두 결과를 더해서 1...100 합한 값을 출력하세요.*/

//Tesk를 써야하는 이유는?
Task{
    await doSomething()
}


func doSomething() async -> Int{
    
    var totalSum: [Int: Int] = [:]
    var indexlist = [1, 50]
    
    // async let을 사용하여 두 개의 비동기 작업을 동시에 실행
    //먼저 실행?
    async let result1 = sumFrom(1, 50)
    async let result2 = sumFrom(51, 100)
        // 결과를 출력
        //await async를 기다리는 중?
        var a = await result1
        var b = await result2
        print("\(a + b)")
        return a + b
    }

//1~50, 51~100까지 더한 숫자 계산 -> 비동기 함수 호출 -> ㅅ
func sumFrom(_ start: Int,_ end: Int) async -> Int{
    
    var sumNumber: Int = 0
    
    for n in start...end {
        sumNumber += n
    }
    return sumNumber
}


  
//
//Task{
//    await doSomething()
//}
//
//
//func doSomething() async -> Int{
//    
//    var _: [Int: Int] = [:]
//    var indexli = [1, 50]
//    
//    // async let을 사용하여 두 개의 비동기 작업을 동시에 실행
//    //먼저 실행?
//    return await withTaskGroup(of:Int.self ){ taskGroup in
//        let indexlist = indexli
//        
//        
//        taskGroup.addTask{
//                return await sumFrom(indexlist[0] + 1, indexlist[0] + 50)
//             }
//            
//          
//        taskGroup.addTask{
//                    return await sumFrom(indexlist[0] + 1, indexlist[0] + 50)
//                    
//                }
//                
//                
//                var resultSum : Int = 0
//                for await n in taskGroup {
//                    resultSum += n
//                }
//                
//                print("\(resultSum)")
//                return resultSum
//                // 결과를 출력
//                //await async를 기다리는 중?
//                
//            }
//        }
//        
//        //1~50, 51~100까지 더한 숫자 계산 -> 비동기 함수 호출 -> ㅅ
//        func sumFrom(_ start: Int,_ end: Int) async -> Int{
//            
//            var sumNumber: Int = 0
//            
//            for n in start...end {
//                sumNumber += n
//            }
//            return sumNumber
//        }
//        
//
