//
//  StorageNavigationView.swift
//  LifeCycleDemoView
//
//  Created by YOU on 10/30/23.
//

import SwiftUI

struct StorageNavigationView: View {
    
    @AppStorage("selectedItem") var selectedItem:String? //? 빈 문자열이 들어올수도 있다
    let items = ["APPLE","BANANA","CHERRY"]
    
    
    var body: some View {
        NavigationView {
            
//            List(items, id: \.self) { item in
//                NavigationLink(
//                    destination:Text(item),
//                    tag:item,
//                    selection: $selectedItem) {
//                        Text(item)
//                    }
//                 
//              
//            }
           
        }
       
    }
}

#Preview {
    StorageNavigationView()
}
