//
//  StackFrameView.swift
//  demoProject2
//
//  Created by YOU on 10/12/23.
//

import SwiftUI

struct StackFrameView: View {
    @State var myLayout : AnyLayout = AnyLayout(VStackLayout())
    
    var body: some View {
        
        VStack {
            myLayout{
                Image(systemName:"goforward.10")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                
                Image(systemName:"goforward.15")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
  
                
            }
            
            HStack {
                Button(action: {
                    myLayout = AnyLayout(HStackLayout()) }) {
                        Text("HStack")
                    }
            }
            Spacer()
            VStack {
                Image(systemName: "goforward.10")
                Image(systemName: "goforward.30")
                Image(systemName: "goforward.30")
            }
            Spacer()
            Text("Hello, World")
                .padding(.horizontal,20)//가로
                .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/)
            HStack {
                Text("Q=====")
                
                VStack {
                    Text("Q1")
                    Text("Q2")
                    Text("Q3")
                }
                VStack {
                    Text("A")
                    Text("B")
                    Text("C")
                }
                .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/)
            }
            .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/)
        }
        HStack {
            Image(systemName: "airplane")
            Text("Flight time :")
            Text("London")
            Text("Seoul")
            Text("Paris")
        }
        .font(.largeTitle)
        .lineLimit(1...2)
        
        //swift UI 프레임 워크  -> 뷰크기 조절
        Text("Swift UI Frame")
            .font(.largeTitle)
            .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/)
        //minwidth . maxwidth
            .frame(minWidth: 0, maxWidth: .infinity , minHeight: 0)
            .edgesIgnoringSafeArea(.all)
        
        
        //뷰들을 담고 있는 컨테이너 크기에 따라 조절가능
        
        GeometryReader { geometry in
            
            VStack {
                
                Text("GeometryReader")
                    .font(.largeTitle)
                    .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/)
                    .frame(width:geometry.size.width / 2, height: (geometry.size.height / 4) * 3)
            }
        }
    }
}
#Preview {
    StackFrameView()
}
