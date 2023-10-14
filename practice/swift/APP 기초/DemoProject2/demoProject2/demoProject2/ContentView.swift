//
//  ContentView.swift
//  demoProject2
//
//  Created by YOU on 10/11/23.
//

import SwiftUI

struct ContentView: View {

    var body: some View {

        NavigationView {

            VStack {

                NavigationLink(destination: Example01(), label: {
                    
                Text("Example01")
                .font(.headline)})
                .modifier(StandardMain())
                
                NavigationLink(destination: Example02(), label: {
                    
                Text("Example02")
                .font(.headline)})
                .modifier(StandardMain())
                
                NavigationLink(destination: Example03(), label: {
                    
                Text("Example03")
                .font(.headline)})
                .modifier(StandardMain())
                
                NavigationLink(destination: Example04(), label: {
                    
                Text("Example04")
                .font(.headline)})
                .modifier(StandardMain())
                
                NavigationLink(destination: BasicView(), label: {
                    
                Text(" BasicView")
                .font(.headline)})
                .modifier(StandardMain())
                
            }
        }
    }
    struct StandardMain : ViewModifier {
        func body(content: Content) -> some View {
            content
            
                .padding(40)
                .background(Color.teal)
                .foregroundColor(.white)
                .background(Color.indigo)
                .cornerRadius(50)
        }
    }

}
#Preview {
    ContentView()
}

