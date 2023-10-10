//: [Previous](@previous)

import SwiftUI
import PlaygroundSupport

struct ContentView: View {
    
    @State private var msg: String = "일의 자리 바꾸기"
    @State private var rest: String = ""
    @State private var num1: String = "0"
 
    
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
                TextField("숫자 입력 :", text: $num1)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .frame(width: 200)
                
                Button(action: buttonPressed, label: {
                    Text("Submit")
                })
                .foregroundStyle(.white)
                
                
                
            }
            
        }
        .padding(100)
        .background(Color.orange)
    }
    
 func buttonPressed() {
        if let number1 = Int(num1){
            let result = (number1 / 100) * 100 + 1
            msg = "결과 \(result) 입니다"
        } else {
            msg = "error"
        }
    }
}


PlaygroundPage.current.setLiveView(
  ContentView().padding(100))

//: [Next](@next)
