//
//  HowManyCount.swift
//  demoProject3
//
//  Created by YOU on 10/16/23.
//

import SwiftUI


struct HowManyCount: View {
    @State var count = 0
    
    var body: some View {
        
        Spacer()
        VStack {
            Text("\(count)")
                .font(.largeTitle)
        }
        Spacer()
        HStack{
            
            Button(action: {
                count += 1
            }) {
                Text("Count U")
                    .padding(8)
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .border(Color.blue, width: 5)
                    .cornerRadius(8)
            }
        }
    }
    
       
}


#Preview {
    HowManyCount()
}
