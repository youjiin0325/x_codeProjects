//
//  Calling_To_Lion.swift
//  demoProject3
//
//  Created by YOU on 10/16/23.
//

import SwiftUI

struct Calling_To_Lion: View {
    @State var inputText = ""
    @State private var showText: String = ""
    
    var body: some View {
        VStack {
            Image("kakao")
                .resizable()
                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                .frame(width: 350, height: 350)
                .cornerRadius(10)
            
            HStack {
                
                //버튼에 링크 걸기
//                Link(destination: URL(string: "https://www.apple.com/kr/")!,label: {
//                    Text("HOME")
//                })
                
                Button(action: {}) {
                    Text("HOME")
                }
                .padding(8)
                .background(Color.blue)
                .foregroundColor(.white)
                .border(.blue, width: 2)
                .cornerRadius(8)
                Spacer()
                Text(showText)
                Spacer()
                Button ("CALL") {
                    //전화걸기
                    let numberStrin = "01059591234"
                    let telephone = "tel://"
                    let formattedString = telephone  + numberStrin
                    guard let url = URL (string: formattedString) else {
                        return}
                    UIApplication.shared.open(url)
                   
                }
                .padding(8)
                .background(Color.blue)
                .foregroundColor(.white)
                .border(.blue, width: 2)
                .cornerRadius(5)
            }
            
            .padding()
            
            
            Spacer()
            
            HStack {
                //소문자 -> 대문자로 바꾸기(실패함)
                TextField("Enter", text: $inputText) //$upperInputText)
                    .textFieldStyle(.roundedBorder)
                    
                
                Button(action: {
                         upper()
                }) {
                    Text("HELLO BUTTON")
                        .padding(7)
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .border(.blue, width: 2)
                        .cornerRadius(5)
                }
            }
            .padding()
            
        }
        .background(Color.teal)
    }
    
    //self 는 뭐지?????
    private func upper() {
            self.showText = self.inputText.uppercased()
        }
}

struct Calling_To_Lion_Previews: PreviewProvider {
    static var previews: some View {
        Calling_To_Lion()
    }
}

