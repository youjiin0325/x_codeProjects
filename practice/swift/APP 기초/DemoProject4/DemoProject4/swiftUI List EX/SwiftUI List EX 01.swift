/*
 List 를 사용하여 다음과 같은 화면을 구현해보세요.
 화면에는 "SwiftUI List Quiz" 라는 제목이 있습니다.
 List 에는 10개의 행이 있으며, 각 행에는 "Item 1", "Item 2", ... , "Item 10" 이라는 텍스트가 있습니다.
 List 의 배경색은 흰색이고, 텍스트의 색은 파란색입니다.
 */

import SwiftUI

struct SwiftUI_List_EX_01: View {
  

        @State var title = "First View"

        var body: some View {
            NavigationStack {
                VStack {
                    Text(title)
                    NavigationLink(destination: SecondView(title: $title), label: {Text("Go...")})
                }
            }

        }
    }

    struct SecondView: View {

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
    SwiftUI_List_EX_01()
}
