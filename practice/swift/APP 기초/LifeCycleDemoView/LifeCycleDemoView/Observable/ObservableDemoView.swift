

import SwiftUI
import Foundation

class TimerData: ObservableObject {
    //공유되어야 하는 값
    @Published var timeCount = 0
    var timer: Timer?
    
    init() {
        //알람이벤트 timer
        timer = Timer.scheduledTimer(timeInterval: 1.0,
                                     target: self,
                                     selector: #selector(timerDidFire),
                                     userInfo: nil,
                                     repeats: true)
    }
    @objc func timerDidFire() {
        timeCount += 1
    }
    func resetCount() {
        timeCount = 0
    }
    
}

struct ObservableDemoView: View {
    @StateObject var timerData: TimerData = TimerData()
    
    var body: some View {
        NavigationView {
            
            
            VStack {
                Text("TIME COUNTER = \(timerData.timeCount)")
                    .font(.largeTitle)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .padding()
                Button("RESET") {
                    timerData.resetCount()
                }
                NavigationLink(destination: ObservableSecondView()) {
                    Text("Next Screen")
                }
                .padding()
                
            }
        }
        .environmentObject(timerData)
       
    }
}

#Preview {
    ObservableDemoView()
}
