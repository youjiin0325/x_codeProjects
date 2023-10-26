//
//  ItemTwo.swift
//  LifeCycleDemoView
//
//  Created by YOU on 10/26/23.
//

import SwiftUI

struct ItemTwo: View {
    @EnvironmentObject var colorDataView : ColorPickOne
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
//    .background(colorDataView.colors[colorDataView.colorIndex])
}

#Preview {
    ItemTwo()
}
