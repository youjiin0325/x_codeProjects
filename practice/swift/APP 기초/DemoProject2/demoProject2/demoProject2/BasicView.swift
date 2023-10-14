//
//  BasicView.swift
//  demoProject2
//
//  Created by YOU on 10/11/23.
//

import SwiftUI

struct BasicView: View {
    
    @ObservedObject var num = NumberOnly()
    @State var score = 0
    @State var msg = ""
     
     //프로퍼티 뷰
     let carStack = HStack {
         Text("car image")
             .font(.headline)
             .foregroundColor(.white)
         Image(systemName: "car.fill")
           
     }
     
     var body: some View {
         // closure
         VStack {
             carStack
             //VStack 위에서 아래로
             Image(systemName: "pencil.and.scribble")
             //프로퍼티 수정자
                 .resizable()
                 .aspectRatio(contentMode: .fit)
             
                 .foregroundStyle(.tint)
             Text("Hello, world!")
                 .foregroundColor(Color.white)
                 .padding()
                 .border(Color.white)
             
             //커스텀 수정자 적용
             Text("\(msg)")
                 .modifier(StandardTitle())
              
             // 숫자 입력
                   HStack {
                       TextField("Score", value: $score, format: .number)
                           .textFieldStyle(RoundedBorderTextFieldStyle())
                           .keyboardType(.decimalPad)
                       TextField("Number", text: $num.value)
                           .textContentType(.creditCardNumber)
                           .textFieldStyle(RoundedBorderTextFieldStyle())
                           .keyboardType(.decimalPad)
                   }

             HStack {
                 TextField("Input", text: $msg)
                     .textFieldStyle(RoundedBorderTextFieldStyle())
                 Button(action: btnPressed, label: {
                     Image(systemName: "envelope")
 //                    Text("Send")
 //                        .foregroundColor(Color.white)
 //                        .padding()
                         
                 })
               }
             MyStackView()
             //커스텀 폰트 수정-> Title  폰트 바꾸고 싶을 떄
                 .font(.custom("copperplate", size: 40))
             
             //커스텀 컨테이너 뷰
             MyVStack {
                 Text("Hello")
                 Text("World")
                     .font(.title)
             }
             
             //레리블 뷰 . 아이콘과 텍스트가 나란히 배치
             Label("Welcome", systemImage: "person.circle.fill")
                 .font(.largeTitle)
             
 //            Label(
 //                title: { Text("Label") },
 //                icon: )

         }
         .padding(100)
         .background(Color.teal)
         
     }
     func btnPressed(){
         msg = "Bye world"
     }
 }
 //하위뷰로 작업하기 -> 정적(고정되어 있는것이라 수정이 어려움 -> 커스텀 컨테이너 뷰)
 struct MyStackView: View {
     var body : some View {
         HStack {
             Text("name")
             Text("age")
         }
     }
 }
 //커스텀 수정자(공통된 것)
 struct StandardTitle: ViewModifier {
     func body(content: Content) -> some View {
         
         content
             .font(.largeTitle)
             .foregroundColor(.white)
             .background(Color.blue)
             .border(Color.blue, width: 0.2)
             .shadow(color: Color.black, radius: 3, x: 0, y: 3 )
     }
     
 }

 //커스텀 컨테이너 뷰 + viewBuilder 속성을 사용
 struct MyVStack<Content: View>: View {
     let content: () -> Content
     init(@ViewBuilder content:@escaping () -> Content ) {
         self.content = content
     }
     var body: some View {
         VStack(spacing: 10) {
             content()
         }
         .font(.largeTitle)
     }
 }

 //숫자만 강제하는 객체
 class NumberOnly: ObservableObject {
     @Published var value = ""{
     
     didSet {
         let filtered = value.filter{ $0.isNumber }
         if value  != filtered {
             value = filtered
          }
        }
     }

 }


#Preview {
    BasicView()
}
