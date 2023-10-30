//
//  SimpleTextView.swift
//  ColorPickerDemoView
//
//  Created by YOU on 10/27/23.
//

import SwiftUI

struct SimpleTextView: View {
    //@SceneStorage("firstText") -> 하나로 연결되어 있어서 텍스트 공유가 되고 있지만 다른 창에 들어가면 바로 기본값으로 바뀜
 @SceneStorage("firstText") var editorText : String = "Simple Text"
    var body: some View {
        TextEditor(text: $editorText)
            .padding(30)
            .font(.largeTitle)
    }
}

#Preview {
    SimpleTextView()
}
