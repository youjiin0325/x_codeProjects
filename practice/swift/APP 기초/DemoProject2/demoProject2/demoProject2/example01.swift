//
//  example01.swift
//  demoProject2
//
//  Created by YOU on 10/11/23.
//

import SwiftUI

struct Example01: View {

    @State var totallSeconds = ""
    @State var calculatedTime = ""
    @State var calculatedHours = false
    var body: some View {
        
        NavigationView {
            
            VStack{
                Label("근무시간", systemImage: "calendar.badge.clock")
                    .font(.title)
                    .foregroundColor(.black)
                
                TextField("이번 주 총 근무 시간을 입력하세요", text: $totallSeconds )
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .keyboardType(.decimalPad)
                    .modifier(Standard())
                    .modifier(Standard2())
                
                //Q 근무시간을 입력하면 textField 가 사라지고 계산된 근무시간만 보여주기
                //calculatedHours = false -> 계산 함수에서 true 받기
                if calculatedHours == true {
                    Text(calculatedTime)
                        .modifier(Standard2())
                }
                
                
                HStack {
                    
                    NavigationLink(destination: Example02(), label: {
                        Text("NEXT")
                    })
                    
                    .padding(10)
                    .background(Color.white)
                    .foregroundColor(.black)
                    .modifier(Standard())
                    
                    Button(action: calculTotallTiems, label: {Text("계산하기")})
                        .padding(10)
                        .background(Color.white)
                        .foregroundColor(.black)
                        .modifier(Standard())
                    
                }
                .padding(10)
            }
        }
    }
    func calculTotallTiems() {
        if let times = Int(totallSeconds) {
            let hours  = times / 3600
            let minutes = (times % 3600) / 60
            let seconds  = minutes % 60
            calculatedTime = "이번 주 총 근무 시간은 \(hours)시간 \(minutes)분 \(seconds)초 입니다."
            calculatedHours = true
            
        }else {
            totallSeconds = "시간을 정확하게 입력하세요"
            calculatedHours = false
           }
        }
    //커스텀 수정자(공통된 것)
       struct Standard: ViewModifier {
           func body(content: Content) -> some View {
   
               content
                   .border(Color.gray, width: 0.5)
                   .shadow(color: Color.gray, radius: 2, x: 2, y: 2)
           }
   
       }
    //frame , padding
    struct Standard2: ViewModifier {
        func body(content: Content) -> some View {
            
            content
                .frame(width:350)
                .padding(20)
        }
    }
}


#Preview {
    Example01()
}

