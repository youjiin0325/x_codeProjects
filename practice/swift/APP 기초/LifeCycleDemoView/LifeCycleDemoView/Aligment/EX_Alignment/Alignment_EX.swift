//
//  Alignment_EX.swift
//  LifeCycleDemoView
//
//  Created by YOU on 10/30/23.
//

import SwiftUI

struct Alignment_EX: View {
    var body: some View {
        VStack {
           /* SwiftUI 스택 정렬 예제 01*/
            HStack (alignment: .firstTextBaseline, spacing: 50){
                Text("Hello")
                    .font(.largeTitle)
                Text("World")
                       }

        }
    }
}

#Preview {
    Alignment_EX()
}
