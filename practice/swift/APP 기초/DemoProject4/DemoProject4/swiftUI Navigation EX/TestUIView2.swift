/*
 Navigation 예제 02

 SwiftUI에서 NavigationStack을 사용하여
 첫 번째 화면에서 두 번째 화면으로 이동할 때, 두 번째 화면에 전달된 데이터를 표시하고,
 두 번째 화면에서 데이터를 수정할 수 있도록 하는 코드를 작성하세요.
 단, 수정된 데이터는 첫 번째 화면에도 반영되어야 합니다.
 */

import SwiftUI



struct TestUIView2: View {
  
    @AppStorage("newDate") var newDate = "오늘 날짜는?"
    var body: some View {
        NavigationStack {
            
            NavigationStack {
                
                NavigationLink(destination: NavigationEX_02SecondView() ) {
                   
                    VStack {
                        Text("SecondView")
                        TextField("오늘 날짜는?", text: $newDate)
                        Button("Reset") {
                            newDate = " "
                        }
                        
                    
                    }
                   
                        
                    }
                }
            }

            
        }
    }
struct NavigationEX_02SecondView: View {

    @AppStorage("newDate") var newDate = "오늘 날짜는?"
    var body: some View {
        NavigationStack {
            TextField("Enter Date",text: $newDate)
                .padding()
                .textFieldStyle(RoundedBorderTextFieldStyle())
        }
    }
}

#Preview {
    TestUIView2()
}
