//: [Previous](@previous)

import Foundation

//```swift
import SwiftUI
import PlaygroundSupport

struct ContentView: View {
    
    @State private var msg: String = "겨울에는 귤이 최고야"
    @State private var rest: String = ""
    @State private var num1: String = "0"
    @State private var num2: String = "0"
    
    var body: some View {
        VStack {
            Image(systemName: "tree")
                .imageScale(.large)
                .foregroundStyle(.tint)
                .padding(10)
            Text("\(msg)")
                .foregroundColor(.white)
                .frame(width: 500)
            
            HStack {
                TextField("귤 :", text: $num1)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .frame(width: 200)
                
                TextField("한 박스 :", text: $num2)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .frame(width: 200)
                
                Button(action: buttonPressed, label: {
                    Text("포장하기")
                })
                .foregroundStyle(.white)
                
                
            }
            
        }
        .padding(100)
        .background(Color.orange)
    }
    
    func buttonPressed() {
        if let number1 = Int(num1), let number2 = Int(num2), number2 != 0 {
            let result = number1 / number2
            let remainder = number1 % number2
            
            msg = "\(number1) 개를 사면 \(result) 박스에 담고 \(remainder) 가 남습니다."
            
        } else {
            msg = "숫자로 변환할 수 없는 입력이거나 0으로 나눌 수 없습니다."
        }
    }
}


PlaygroundPage.current.setLiveView(
  ContentView().padding(100))
//```

//: [Next](@next)
