//
//  AppStorageView.swift
//  LifeCycleDemoView
//
//  Created by YOU on 10/26/23.
//

import SwiftUI

struct AppStorageView: View {
    @AppStorage("mytext")  var editorText : String = "Simple Text"
    
    var body: some View {
        TextEditor(text: $editorText)
            .padding(30)
            .font(.largeTitle)
    }
}

#Preview {
    AppStorageView()
}
