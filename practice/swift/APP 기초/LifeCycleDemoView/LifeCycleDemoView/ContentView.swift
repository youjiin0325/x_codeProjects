//
//  ContentView.swift


import SwiftUI

struct ContentView: View {
    
    var body: some View {
        NavigationView {
            List {
                Section(header: Image(systemName: "heart.fill")) {
                NavigationLink(destination: FirstTabView()) {
                Text("FirstTabView")
                   }
                NavigationLink(destination: SecondTabView()) {
                Text("SecondTabView")
                   }
                NavigationLink(destination: ObservableDemoView()) {
                Text("ObservableDemoView")
                   }
                /*NavigationLink(destination: ObservableSecondView()) {
                Text("ObservableSecondView")
                   }*/
                NavigationLink(destination: StorageDemoView()) {
                Text("StorageDemoView")
                    }
                NavigationLink(destination: SceneStorageView()) {
                Text("SceneStorageView")
                    }
                NavigationLink(destination: AppStorageView()) {
                Text("AppStorageView")
                    }
                NavigationLink(destination: SceneStorageView_()) {
                Text("ColorPicker")
                    }
                NavigationLink(destination: AligmentView()) {
                Text("AligmentView")
                    }
                NavigationLink(destination: AligmentView_EX()) {
                Text("AligmentView_EX")
                        }
                NavigationLink(destination: AligmentView_EX2()) {
                Text("AligmentView_EX2")
                            }
                    
                    
                }
            }
        }
        
        
        
        
//        TabView{
//            
//            FirstTabView()
//                .tabItem {
//                    Image(systemName: "01.circle")
//                    Text("Frist")
//                }
//            SecondTabView()
//                .tabItem {
//                    Image(systemName: "02.circle")
//                    Text("Second")
//                }
//        }
    }
}

#Preview {
    ContentView()
}
