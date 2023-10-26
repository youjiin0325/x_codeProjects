//
//  ObservableSecondView.swift
//  LifeCycleDemoView
//
//  Created by YOU on 10/26/23.
//

import SwiftUI

struct ObservableSecondView: View {
    
    @EnvironmentObject var timerData : TimerData
    
    var body: some View {
        VStack {
            Text("Second View")
                .font(.largeTitle)
            Text("TIMER COUNT = \(timerData.timeCount)")
                .font(.largeTitle)
        };
    }
}

#Preview {
    ObservableSecondView().environmentObject(TimerData())
}
