//
//  TestUIView1.swift
//  DemoProject4
//
//  Created by YOU on 11/1/23.
//

import SwiftUI

struct TestUIView1: View {
    
    @State var title = "First View"

        var body: some View {
            NavigationStack {
                VStack {
                    Text(title)
                    NavigationLink(destination: SecondView1(title: $title), label: {Text("Go...")})
                }
            }

        }
}
 
struct SecondView1: View {
    @Binding var title: String
    
 
        var body: some View {
                VStack {
                    Text(title)
                }
                .onAppear {
                    title = "Second View"
                }
                .onDisappear {
                    title = "First View"
                }
                .navigationTitle("Second View")
            }
    }

#Preview {
    TestUIView1()
}
