//
//  SceneStorageView.swift
//  LifeCycleDemoView
//
//  Created by YOU on 10/26/23.
//

import SwiftUI

struct SceneStorageView: View {
    // @SceneStorage (키값) -> 앱을 쓰다가 잠시 나가도 유지되어있음
    @SceneStorage("mytext") private var editorText : String = ""
    
    var body: some View {
        TextEditor(text: $editorText)
            .padding(30)
            .font(.largeTitle)
    }
}

#Preview {
    SceneStorageView()
}
