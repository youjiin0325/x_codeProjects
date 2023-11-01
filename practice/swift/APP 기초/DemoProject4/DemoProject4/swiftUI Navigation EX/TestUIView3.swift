/*
 Navigation 예제 03

 SwiftUI에서 NavigationStack을 사용하여
 첫 번째 화면에서 두 번째 화면으로 이동할 때, 두 번째 화면의 배경색을 파란색으로 설정하고,
 두 번째 화면에서 첫 번째 화면으로 돌아갈 수 없도록 하는 코드를 작성하세요.
 */

import SwiftUI

struct TestUIView3: View {

    @State var data = "Hello"

    var body: some View {
        NavigationStack {
            VStack {
                Text(data)
                NavigationLink(destination: TestUIView3View(data: $data), label: {Text("Go...")})
            }
        }

    }
}

struct TestUIView3View: View {

    @Binding var data: String
    @State var isEditing = false

    var body: some View {
            VStack {
                Spacer()
                TextField("여기에 입력", text: $data)
                    .disabled( !isEditing )
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .border(isEditing ? .black : .mint, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                Spacer()
            }
            .background(.white)
            .navigationBarBackButtonHidden(false)
            .toolbar {
                Button(action: {
                    isEditing.toggle()
                }, label: {
                    Text(isEditing ? "Done" : "Edit")
                })
            }
            .padding()
    }
}

#Preview {
    TestUIView3()
}
