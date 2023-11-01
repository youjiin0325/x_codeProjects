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
            }
        }
    }
}


#Preview {
    ContentView()
}
