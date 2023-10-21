import UIKit


//동시성 예제 03
//비동기 함수를 호출하고 결과를 출력하는 코드를 작성해보세요.
// 예시코드:
func asyncFunction() async -> Int {
    let random = Int.random(in: 1...10)
    return random
}

/**  방법 1
Task{
    //호출 -> 랜덤값 받기(async let 으로 불러서 await print 로 받기 )
    async let result =  asyncFunction()
    await print(result)
 }
 */


// 방법 2
func printResult() async {
    let result = await asyncFunction()
    print(result)
}

Task {
    await printResult()
}



/**
 동시성 예제 04

 다음 코드는 두 개의 비동기 함수를 호출하고, 그 결과를 더해서 출력하는 코드입니다.
 하지만 이 코드는 컴파일 에러가 발생합니다.
 에러의 원인과 해결 방법을 설명하고, 올바른 코드를 작성해보세요.
 
asyncPrintSum 함수 안에서 async한 함수인 asyncAdd를 호출했으니
async한 함수를 호출한 함수에도 리턴타입 자리에 async 키워드를 붙여줘야한다
 */


// 예시코드:
func asyncAdd(_ x: Int, _ y: Int) async -> Int {
    return x + y
}

//비동기함수로 하겠다 선언
func asyncPrintSum(_ a: Int, _ b: Int) async {
    let sum = await asyncAdd(a, b)
    print(sum)
    
    /**
     Task {
          async let sum =  asyncAdd(a, b)
          await print(sum)
     }
     */
    
}

Task {
    await asyncPrintSum(10,10)
}

/**
 동시성 예제 05

 다음 코드는 비동기 함수 fetchUser(id:)를 호출하고, 그 결과를 print하는 코드입니다.
 이 코드에 에러가 있는지, 있다면 어디에 있는지 찾아보고, 없다면 출력 결과를 예상해보세요.
 */


func fetchUser(id: Int) async throws -> String {
    // some network request
    return "User \(id)"
}

func printUser(id: Int) async throws {
    
    do {
        let user = try await fetchUser(id: id)
        print(user)
    }catch {
        print(error)
    }
    
    
}

Task {
   try await printUser(id:55)
}
/**
func fetchUser(id: Int) async -> String {
    // some network request
    return "User \(id)"
}

func printUser(id: Int) {
    /*
    let user = await fetchUser(id: id)
     예제 4와 동일 이유
    */
    
    Task {
        let user = await fetchUser(id: id)
        print(user)
    }
} */



/**
 동시성 예제 06

 다음 코드는 비동기 함수를 호출하고, 그 결과를 동기적으로 반환하는 함수입니다.
 하지만 이 코드는 런타임 에러가 발생합니다.
 에러의 원인과 해결 방법을 설명하고, 올바른 코드를 작성해보세요.
 */

func asyncDouble(_ x: Int) async -> Int {
    return x * 2
}


func syncDouble(_ x: Int)  {
    Task.detached { print( await asyncDouble(x) ) }
}

syncDouble(2)


/**
 동시성 예제 07

 다음 코드는 두 개의 비동기 함수를 호출하고, 그 결과를 더해서 출력하는 코드입니다.
 하지만, 이 코드는 오류가 발생합니다.
 왜 그런지 설명하고, 오류를 수정한 코드를 작성하세요.
 */

func asyncAdd(_ x: Int, _ y: Int) async -> Int {
    return x + y
}
func asyncPrintSum() async {
    let a = await asyncAdd(10, 20)
    let b = await asyncAdd(30, 40)
    print(a + b)
}

Task {
  await asyncPrintSum()
}
