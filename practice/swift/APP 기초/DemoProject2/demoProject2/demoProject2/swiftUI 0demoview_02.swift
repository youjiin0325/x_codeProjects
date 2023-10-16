//
//  example06-01.swift
//  demoProject2
//
//  Created by YOU on 10/13/23.
//

//한글입력  -> NSAutomaticDashSubstitutionEnabled
// .precomposedStringWithCanonicalMapping


import SwiftUI

struct example06_01: View {
//    @State private var rotation:Double = 0
//    @State private var text:String = "What color do you like ?"
   
 
    
    @State private var colorIndex = 0
    @State private var rotation:Double = 0
    @State private var text:String = "Enter text here"
    
    var colors: [Color] = [.black, .red, .green, .blue]
    var colornames = ["Black", "Red", "Green", "Blue"]
    
    var body: some View {
        
        VStack {
            Spacer()
            Text(text)
                .font(.system(size: 65, weight: .bold))
                .fontWeight(.heavy)
                .rotationEffect(.degrees(rotation))
                .animation(.easeInOut(duration: 2), value: rotation)
                .foregroundColor(colors[colorIndex])
            
            Spacer()
            Divider()
            Slider(value: $rotation, in: 0...360, step: 0.1)
                .padding()
            
            
            TextField("Enter text here", text: $text)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            
            //picker
            Picker(selection: $colorIndex , label: Text("Picker")) {
                
                //ForEch
                ForEach (0..<colornames.count, id: \.self) {
                    Text(colornames[$0])
                        .foregroundColor(colors[$0])
                }
            }
            .pickerStyle(.wheel)
            
        }
        .padding()
//        .background(Color.indigo)
        
    }
}


#Preview {
    example06_01()
}
