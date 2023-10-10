//
//  ContentView.swift
//  DemoProject
//
//  Created by YOU on 10/10/23.
//

import SwiftUI

struct ContentView: View {
    @State private var msg : String = "Hello, world"
    var body: some View {
           VStack {
            Image(systemName: "tree")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("\(msg)")
                  
                   .foregroundColor(.white)
               
            HStack{
                   TextField("Placeholder", text: $msg)
                           .textFieldStyle(RoundedBorderTextFieldStyle())
                       Button(action: buttonPressed , label: {Text("Send")})
                       .foregroundStyle(.white)
               }
          
        }
        .padding(10)
        .background(Color.indigo)
        
        
    }
    func buttonPressed (){
        msg = "hahah"
    }}

#Preview {
    ContentView()
}
