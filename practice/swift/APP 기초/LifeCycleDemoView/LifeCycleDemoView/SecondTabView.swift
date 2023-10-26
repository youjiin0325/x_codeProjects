//
//  SecondTabView.swift
//  LifeCycleDemoView
//
//  Created by YOU on 10/26/23.
//

import SwiftUI

struct SecondTabView: View {
    
  @State private var text: String  = ""
    
    var body: some View {
        TextEditor(text: $text)
            .padding()
            .onChange(of: text) {
                print("onChange triggered")
            }
    }
}

#Preview {
    SecondTabView()
}
