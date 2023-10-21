//
//   Concurrency_View1-2.swift
//  demoProject2
//
//  Created by YOU on 10/19/23.
//

import SwiftUI

struct _Concurrency_View1_2: View {
    var body: some View {
            Button(action: {
                // 동기 함수에서 비동기 함수 호출
                Task {
                    await doSomething()
                }
            }, label: {
                Text("Do Something")
            })
        }

        // 비동기 함수 선언 async
        // 비동기 함수 호출 await
        func doSomething() async {
            print("Start \(Date())")
            await takeTooLong()
            print("End \(Date())")
        }

        func takeTooLong() async {
            sleep(5)            // 5초 지연
            print("Async task completed at \(Date())")
        }
}

#Preview {
    _Concurrency_View1_2()
}
