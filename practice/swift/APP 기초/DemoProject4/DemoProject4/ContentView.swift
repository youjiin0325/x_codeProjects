//
//  ContentView.swift
//  DemoProject4
//
//  Created by YOU on 10/31/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        NavigationView {
            List{
                NavigationLink(destination: ListNavigationView()) {
                Text("ListNavigationView")
                   }
                NavigationLink(destination: TestUIView1()) {
                Text("TestUIView1")
                   }
                NavigationLink(destination: TestUIView2()) {
                Text("TestUIView2")
                   }
                NavigationLink(destination: TestUIView3()) {
                Text("TestUIView3")
                   }
                NavigationLink(destination: TestUIView4()) {
                Text("TestUIView4")
                   }
                NavigationLink(destination: SwiftUI_List_EX_01()) {
                Text("SwiftUI_List_EX_01")
                   }
                NavigationLink(destination: SwiftUI_List_EX_03()) {
                Text("SwiftUI_List_EX_03")
                   }
                NavigationLink(destination: SwiftUI_List_EX_04()) {
                Text("SwiftUI_List_EX_04")
                   }
                NavigationLink(destination: SwiftUI_List_EX_05()) {
                Text("SwiftUI_List_EX_05")
                   }
                NavigationLink(destination: ListNavDemo()) {
                Text("ListNavDemo")
                   }
              
                
            }
        }
    }
}


#Preview {
    ContentView()
}
