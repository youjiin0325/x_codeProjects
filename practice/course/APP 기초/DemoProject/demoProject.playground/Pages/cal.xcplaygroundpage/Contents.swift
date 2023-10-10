//: A UIKit based Playground for presenting user interface


import SwiftUI
import PlaygroundSupport

struct ContentView: View {
    
    // @State private 매번 변수 쓸 때 써야하는지?
    @State private var msg : String = "사칙연산 계산기"
    @State private var num: String = ""
    @State private var num1: String = "0"
    @State private var num2: String = "0"
    
    var body: some View {
        VStack {
            Image(systemName: "apple.and.scribble")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("\(msg)")
                .foregroundColor(.white)
            
            HStack{
                
                TextField("숫자를 입력하세요", text: $num1)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                   // .keyboardType(.numberPad) -> 숫자만 입력받음
                TextField("+", text: $num)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                TextField("숫자를 입력하세요", text: $num2)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
//                    .keyboardType(.decimalPad)
                Button(action: buttonPressed , label: {Text("Submit")})
                    .foregroundStyle(.white)
            }
            
        }
        .padding(10)
        .background(Color.indigo)
        
        
    }
    func buttonPressed() {
        if let number1 = Int(num1), let number2 = Int(num2) {
            
            switch num {
            case "+":
                msg = "정답은 \(number1 + number2)"
            case "-":
                msg = "\(number1 - number2)"
            case "/":
                msg = "\(Double(number1) / Double(number2))"
            case "*":
                msg = "\(number1 * number2)"
            default:
                msg = "숫자로 변환할 수 없는 입력입니다. 유효한 숫자를 입력해주세요."
                   }
                }
            }
        }
    

PlaygroundPage.current.setLiveView(
    ContentView().padding(100))

