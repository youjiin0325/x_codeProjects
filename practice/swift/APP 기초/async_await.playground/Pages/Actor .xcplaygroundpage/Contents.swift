//: [Previous](@previous)

import Foundation

//액터 예제 01

//다음 코드는 actor 를 사용하여 비동기적으로 두 개의 숫자를 더하는 함수를 정의하고 있습니다.
//이 코드의 실행 결과는 무엇일까요?
actor Calculator {
    func add(_ x: Int, _ y: Int) -> Int {
        return x + y
    }
}

let calculator = Calculator()
Task {
    let result = await calculator.add(3, 5)
    print(result) // 8
}


// 액터 예제 02
//actor 를 사용하여 비동기적으로 두 개의 숫자를 곱하는 함수를 가지고 있는 액터를 만들어 보세요.
actor Multiplier {
    var factor = 0
    
    init(factor: Int = 0) {
        self.factor = factor
    }
    func multiply(_ n:Int) ->Int {
        return n * factor
    }
    
}

//예시:
let multiplier = Multiplier(factor: 2)
Task {
    let result = await multiplier.multiply(4)
    print(result)
}



// 액터 예제 03
// 다음 코드에서 actor 를 사용하여 Counter 클래스를 정의하고, increment 메서드를 구현하세요.
// (increment 메서드는 내부의 count 프로퍼티를 1 증가시킨다.)
actor Counter {
    var cnt = 0
    
    func increment() -> Int {
        cnt += 1
        return cnt
    }
}
//예시:
let counter = Counter()

Task {
  let cntResult =  await counter.increment()
    print(cntResult)
}




// 액터 예제 04
// actor 를 사용하여 비동기적으로 두 개의 문자열을 연결하는 함수를 정의하고 호출하는 액터를 작성하세요.
actor Concatenator {
    
    func concatenate (_ str1: String, _ str2: String) -> String {
       return str1 + str2
    }
    
}
//예시:
let concatenator = Concatenator()
async {
    let result = await concatenator.concatenate("Hello", "World")
    print(result) // 출력 결과: HelloWorld
}



//액터 예제 05
//
//다음 기능들을 갖는 StringEx 액터를 정의하세요.
//비동기적으로 문자열을 대문자로 변환하는 함수를 정의
//비동기적으로 문자열을 소문자로 변환하는 함수를 정의
//비동기적으로 문자열을 역순으로 변환하는 함수를 정의

actor StringEx {
    
    var str = ""
    
    init(_ str: String) {
        self.str = str
    }

    func capitalize() -> String {
        return str.uppercased()
    }
    func lowercase() -> String {
        return str.lowercased()
    }
    func reverse() -> String {
           return String(str.reversed())
       }

}

let str = StringEx("swIFt")

Task {
    print(await str.capitalize()) // Output: SWIFT
    print(await str.lowercase()) // Output: swift
    print(await str.reverse())   // Output: tFIws
}



//액터 예제 06
//
//다음 코드는 actor 를 사용하여 은행 계좌의 입출금을 관리하는 예제이다.
//코드를 완성하여 입출금 기능을 구현하고, 잔액을 출력하세요.



actor BankAccount {
    var balance = 0

    init(_ balance: Int = 0) {
        self.balance = balance
    }

    // TODO: 입금 기능을 구현
    func depositMoney(_ m: Int) -> Int {
        balance += m
        return balance
    }

    // TODO: 출금 기능을 구현
    func withdrawMoney(_ m: Int) -> Int {
        balance -= m
        return balance
    }
}

let account = BankAccount()

Task {
  // TODO: account 에 1000원을 입금
    print(await account.depositMoney(1000))

  // TODO: account 에서 500원을 출금
    print(await account.withdrawMoney(500))
  // TODO: account 의 잔액을 출력
    print(await account.balance)
}


Task {
  // TODO: account 에 3000원을 입금
    print(await account.despositMoney(3000))
  // TODO: account 에서 6000원을 출금
    print(await account.withdrawMoney(6000))
  // TODO: account 의 잔액을 출력
    print(await account.balance)
}
