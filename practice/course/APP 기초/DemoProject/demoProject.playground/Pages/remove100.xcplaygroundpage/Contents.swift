

import SwiftUI
import PlaygroundSupport


struct ContentView: View {
    
    @State private var msg: String = "100부터 다 기엇!"
    @State private var rest: String = ""
    @State private var num1: String = "0"
 
    
    var body: some View {
        
//        if self.num1 == nil {
//            print("nil num1")
//        }
//        
//        //값이 빌 때  print("num1 is empty")
//        if self.num1.isEmpty {
//            print("num1 is empty")
//        }
        
        return VStack {
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
                .background(Color.green)
                //값을 넣지 않으면 버튼을 쓸 수 없음
//                .disabled(self.num1.isEmpty)
                
            }
            
        }
        .padding(100)
        .background(Color.orange)
    }
    
    func buttonPressed() {
        if let number1 = Int(num1){
            let result = (number1 / 100) * 100
            msg = "백의 자리 이하를 버리면  \(result) 입니다"
        } else {
            msg = "error"
        }
    }
}


PlaygroundPage.current.setLiveView(
  ContentView().padding(100))


//: [Next](@next)

