//
//  ContentView.swift
//  demoProject3
//
//  Created by YOU on 10/16/23.
//

import SwiftUI

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                NavigationLink(destination: Calling_To_Lion()) {
                    Text("Calling To Lion")
                }
                NavigationLink(destination: HowManyCount()) {
                    Text("How Many Count")
                }
                NavigationLink(destination: ButtonLayout()) {
                    Text("Button Layout")
                }
            }
            .navigationBarTitle("연습문제")
        }
    }
}

#Preview {
    ContentView()
}
