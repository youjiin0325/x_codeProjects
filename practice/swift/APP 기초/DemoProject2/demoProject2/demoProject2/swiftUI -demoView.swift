//
//  example06.swift
//  demoProject2
//
//  Created by YOU on 10/13/23.
//

import SwiftUI

struct example06: View {
    //    @State private var rotation:Double = 0
    //    @State private var text:String = "What color do you like ?"
    
    
    @State private var colorIndex = 0
    @State private var rotation:Double = 0
    @State private var text:String = "Pick Up Your Color!"
    
    var colors: [Color] = [.black, .red, .green, .blue]
    var colornames = ["Black", "Red", "Green", "Blue"]
    
    var body: some View {
        
        
        NavigationView{
            
            VStack{
                
                NavigationLink(destination: example06_01(), label: {
                    
                    Text(text)
                        .font(.system(size: 70, weight: .bold))
                        .multilineTextAlignment(.center)
                        .padding(20)
                        .fontWeight(.heavy)
                })
               
            }
            
        }
    }
}
#Preview {
    example06()
}
        
