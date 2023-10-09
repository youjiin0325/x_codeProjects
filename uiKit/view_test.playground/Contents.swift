//: A UIKit based Playground for presenting user interface
import UIKit
import SwiftUI
import PlaygroundSupport

struct ExampleView: View {
    var body: some View {
        VStack {
            Rectangle()
                .fill(Color.blue)
            
                .frame(width: 200, height: 200)
            Button(action:{} ){
                Text("Rotate")
            }}


        }
    }


PlaygroundPage.current.setLiveView(ExampleView().padding(100))
