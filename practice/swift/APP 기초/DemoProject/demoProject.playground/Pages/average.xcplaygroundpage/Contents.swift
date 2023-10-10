//: [Previous](@previous)

import Foundation

import SwiftUI
import PlaygroundSupport

struct ContentView: View {
    
    @State private var msg: String = "이번 시험 성적은?"
    @State private var swift: String = ""
    @State private var ios: String = ""
    @State private var web: String = ""
    
    var body: some View {
        VStack {
            Image(systemName: "pencil")
                .imageScale(.large)
                .foregroundStyle(.tint)
                .padding(10)
            Text("\(msg)")
                .foregroundColor(.white)
                .frame(width: 500)
            
            HStack {
                TextField("Swift :", text: $swift)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .frame(width: 200)
                
                TextField("IOS :", text: $ios)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .frame(width: 200)
                
                TextField("Web :", text: $web)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .frame(width: 200)
                
                Button(action: buttonPressed, label: {
                    Text("점수계산")
                })
                .foregroundStyle(.white)
                
                
            }
            
        }
        .padding(50)
        .background(Color.brown)
    }
    
    func buttonPressed() {
        if let number1 = Int(swift), let number2 = Int(ios), let number3 = Int(web){
           let sumResult = number1 + number2 + number3
           let avr  = sumResult / 3
            msg = "합계 \(sumResult) 평균\(avr)"
            
        } else {
            msg = "점수를 다시 입력하세요"
        }
    }
}


PlaygroundPage.current.setLiveView(
  ContentView().padding(100))

//: [Next](@next)

