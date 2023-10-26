//
//  LifeCycleDemoViewApp.swift
//  LifeCycleDemoView
//
//  Created by YOU on 10/26/23.
//

import SwiftUI

@main
struct LifeCycleDemoViewApp: App {
    
    @Environment(\.scenePhase) private var scenePhase
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
//        .onChange(of: scenePhase, perform:  { phase in
//            switch phase {
//            case .active:
//                print("Active")
//            case .inactive:
//                print("inactive")
//            case .background:
//                print("background")
//            default:
//                print("Unknown")
//            }
//        })
    }
}
