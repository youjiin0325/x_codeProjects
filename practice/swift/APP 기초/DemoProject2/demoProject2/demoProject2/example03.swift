//
//  example03.swift
//  demoProject2
//
//  Created by YOU on 10/12/23.
//

import SwiftUI

struct Example03: View {
    
    @State var q = "짝수? 홀수"
    @State var ans = ""
    @State var result2 =  0
    
    var body: some View {
        VStack {
            HStack {
                Text(q)
                    .padding(40)
                    .foregroundColor(.black)
                    .font(.headline)
                
                VStack {
                    TextField("정수를 입력하세요", text: $ans)
                        .modifier(StandardText())
                }
                .padding(30)
            }
            
            if result2 == 1 {
                Text(" \(ans)는 짝수 입니다")
                    .padding(10)
                    .frame(width: 350)
            } else if result2 == 0 {
                Text(" \(ans)는 홀수 입니다")
                    .padding(10)
                    .frame(width: 350)
            }
            
            Button(action: {
                if let result = calculate(ans) {
                    self.result2 = result ? 1 : 0
                }
            }) {
                Text("찾기")
                    .frame(width: 300)
                    .padding(10)
                    .background(Color.white)
                    .foregroundColor(.black)
                    .cornerRadius(30)
                    .modifier(StandardText())
            }
        }
    }
    
    func calculate(_ ans: String) -> Bool? {
        if let int1 = Int(ans) {
            return int1 % 2 == 0
        }
        return nil
    }

    struct StandardText: ViewModifier {
        func body(content: Content) -> some View {
            content
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .shadow(color: Color.gray, radius: 2, x: 2, y: 2)
        }
    }
}

struct Example03_Previews: PreviewProvider {
    static var previews: some View {
        Example03()
    }
}
