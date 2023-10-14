//
//  example04.swift
//  demoProject2
//
//  Created by YOU on 10/12/23.
//


import SwiftUI

struct Example04: View {
    
    @State var q = "숫자 계산하기"
    @State var ans1 = ""
    @State var ans2 = ""
    @State var result = 0

    
    var body: some View {
       
        HStack {
            Text(q)
                .padding(40)
                .foregroundColor(.black)
                .font(.headline)
            
            VStack {
                TextField("첫 번째 정수 입력", text: $ans1)
                    .modifier(StandardText())
                TextField("두 번째 정수 입력", text: $ans2)
                    .modifier(StandardText())
            }
           
       .padding(30)
        }
        VStack {
            
            if result > 0 {
                Text(" 두 수의 차는 \(result) 입니다")
                    .padding(10)
                    .frame(width: 350)
            }
            
            Button(action: {
                result = calculateDifference(ans1, ans2)
            }) {
                Text("계산하기")
                
                    .frame(width: 300)
                    .padding(10)
                    .background(Color.white)
                    .foregroundColor(.black)
                    .cornerRadius(30)
                    .modifier(StandardText())
                    
                    
            }
        }
    }
    
    let calculateDifference = { (_ ans1: String, _ ans2: String) -> Int  in
        if let int1 = Int(ans1), let int2 = Int(ans2) {
            return int1 > int2 ? int1 - int2 : int2 - int1
        } else {
            return 0
        }
    }
    
    struct StandardText : ViewModifier {
        func body(content: Content) -> some View {
            content
            
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .shadow(color: Color.gray, radius: 2, x: 2, y: 2)
               
        }
    }
}

#Preview {
    Example04()
}

