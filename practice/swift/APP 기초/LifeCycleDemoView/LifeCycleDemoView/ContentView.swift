//
//  ContentView.swift


import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            
            FirstTabView()
                .tabItem {
                    Image(systemName: "01.circle")
                    Text("Frist")
                }
            SecondTabView()
                .tabItem {
                    Image(systemName: "02.circle")
                    Text("Second")
                }
        }
    }
}

#Preview {
    ContentView()
}
