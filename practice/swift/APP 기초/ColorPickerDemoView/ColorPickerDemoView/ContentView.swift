
// ContentView.swift

import SwiftUI

struct ContentView: View {
    var body: some View {
        let colorData = ColorData()
        
        TabView {
            SceneStorageView_()
                .environmentObject(colorData)
                .tabItem {
                    Image(systemName: "01.circle")
                    Text("First")
                }
            
            AppStorageView_()
                .environmentObject(colorData)
                .tabItem {
                    Image(systemName: "02.circle")
                    Text("Second")
                }
            SimpleTextView()
                .environmentObject(colorData)
                .tabItem {
                    Image(systemName: "03.circle")
                    Text("Second")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
