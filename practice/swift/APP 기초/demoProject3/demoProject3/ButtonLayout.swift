//
//  ButtonLayout.swift
//  demoProject3
//
//  Created by YOU on 10/16/23.
//

import SwiftUI

struct ButtonLayout: View {
    var body: some View {
        
       
        VStack{
            Spacer()
            Button(action: {
               
            }) {
                Text("Button")
                    .padding(8)
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .border(Color.blue, width: 2)
                    .cornerRadius(8)
            }
            Spacer()
            Button(action: {
               
            }) {
                Text("Button")
                    .padding(8)
                    .frame(maxWidth: .infinity, maxHeight:600)
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .border(Color.blue, width: 2)
                    .cornerRadius(8)
            }
            Spacer()
            Button(action: {
               
            }) {
                Text("Button")
                    .padding(8)
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .border(Color.blue, width: 2)
                    .cornerRadius(8)
            }
        }
    }
    
}

#Preview {
    ButtonLayout()
}
