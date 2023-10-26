//
//  ItemOne.swift
//  LifeCycleDemoView
//
//  Created by YOU on 10/26/23.
//

import SwiftUI
import Foundation

class ColorPickOne: ObservableObject {
    @Published var colorIndex = 0

    @Published var colors: [Color] = [.black, .red, .green, .blue]
    @Published var colornames = ["Black", "Red", "Green", "Blue"]
    
    init() {
        
    }
 
   func text() -> String{
        return "what's your color?"
    }
}



struct ItemOne: View {
   
    @StateObject var colorData: ColorPickOne = ColorPickOne()
    @State var textFields :String = "what's your color?"
    
    var body: some View {
        
        
        VStack {
            Spacer()
            TextField("What's your color?", text : $textFields )
                .padding(40)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundColor(.white)
 
            
            Spacer()
            Picker(selection: $colorData.colorIndex, label: Text("Pick One")) {
                ForEach(0..<colorData.colornames.count, id: \.self) {
                    Text(colorData.colornames[$0])
                        .foregroundStyle(.white)
                        .fontWeight(.heavy)
                }
            }
            .pickerStyle(.wheel)
        }
        .background(colorData.colors[colorData.colorIndex])

    }
}

#Preview {
    ItemOne()
}
