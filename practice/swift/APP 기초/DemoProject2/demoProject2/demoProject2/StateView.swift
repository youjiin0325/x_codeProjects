//
//  StateView.swift
//  demoProject2
//
//  Created by YOU on 10/13/23.
//

import SwiftUI

struct StateView: View {
    //obsevabled 객체를 구독(사용)하기위해
    @ObservedObject var demoData : DemoData = DemoData()
    
    
    @State private var wifiEnabled = true
    @State private var userName = ""
    
    //상위뷰에서 observable 객체의 인스턴스 추가
    let speedsetting = SpeedSetting()
    
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        VStack {
            
            
            //en 객체를 사용 + 하위뷰 연결
            VStack {
                SpeedControlView()
                SpeedDisplayView()
            }
            .environmentObject(speedsetting)
            
            Text("\(demoData.currentUser), you \(demoData.userCount)")
            
            // Toggle
            Toggle(isOn: $wifiEnabled , label: {
                Text("Enable WI-FI")
            })
            TextField("Enter user name", text:$userName)
            
            //
            Text(userName)
            
//            Image(systemName: wifiEnabled ? "wifi" :
//                       "wifi.slash")
            
            //바인딩을 이용한 하위뷰 호출
            WifiImageView(wifiEnabled: $wifiEnabled)
        }
    }
}


//state binding -> 하위뷰로 분리되어있는 상황에 동일한 상태 프로퍼티에 접근할때
struct WifiImageView: View {
    @Binding var wifiEnabled :Bool
    var body: some View {
        Image(systemName: wifiEnabled ? "wifi" :
                "wifi.slash")
    }
}


//@StateObject(상태객체) 래퍼의 대안
// 1. 뷰가 사용했던 뷰가 없어지더라도 해당 참조가 필요되어 있는 경우에는 유지

//observable 객체
//여러다른 뷰들이 외부에서 접근할 수 있는 지속적인 데이터 표현을 위해 사용
class DemoData : ObservableObject {
    //publish 프로퍼티를 이용해서 프로퍼티 개시
    @Published var userCount = 0
    @Published var currentUser = ""
    
    init() {
     //데이터 초기화 코드
        updatedData()
    }
    
    func updatedData() {
    //데이터를 최신 상태로 유지하기 위한 코드
    }
    
}

/**
 environment 객체
 swift UI 환경에 저장되어 뷰에서  ㅠ에서 뷰로 전달할 필요없이 모든 자식 뷰가 접근 가능
- @EnvironmentObject 프로터피 래퍼를 사용해서 구독(사용)
- 작업을 수행하는 뷰의 상위 뷰에서 Observable 객체의 인스턴스 초기화
- en.... 수정자를 사용해서 뷰 계층 구조에 인스턴스 추가
 */
// ObservableObject -> 관찰하는 객체임 , 변경사항이 있으면 알려줌
class SpeedSetting : ObservableObject {
    @Published var speed = 0.0
    
}

struct SpeedControlView: View {
    @EnvironmentObject var speedsetting : SpeedSetting
    
    var body: some View {
        Slider(value: $speedsetting.speed, in : 0...100)
    }
}

struct SpeedDisplayView: View {
    @EnvironmentObject var speedsetting : SpeedSetting
    
    var body: some View {
        Text("Speed = : \(speedsetting.speed)")
    }
}

#Preview {
    StateView()
}
