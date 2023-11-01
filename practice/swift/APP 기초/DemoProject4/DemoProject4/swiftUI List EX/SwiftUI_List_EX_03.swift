/*
 SwiftUI List 예제 03

 List 를 사용하여 다음과 같은 화면을 구현해보세요.
 화면에는 "SwiftUI List Quiz" 라는 제목이 있습니다.
 List 에는 10개의 행이 있으며, 각 행에는 "Item 1", "Item 2", ... , "Item 10" 이라는 텍스트와 오른쪽에 체크마크 아이콘이 있습니다.
 체크마크 아이콘은 기본적으로 숨겨져 있으며, 행을 선택하면 보이게 됩니다.
 다른 행을 탭하면 이전에 선택된 행의 체크마크 아이콘이 사라지고, 새로 선택된 행의 체크마크 아이콘이 보이게 됩니다.
 */

import SwiftUI

struct  SwiftUI_List_EX_03: View {

    struct Item: Identifiable {
        let id = UUID()
        let image: String
        let text: String
    }

    let items = [
        Item(image: "appplelogo", text: "Apple"),
        Item(image: "swift", text: "Swift"),
        Item(image: "xcode", text: "Xcode"),
        Item(image: "macos", text: "macOS"),
        Item(image: "ios", text: "iOS")
    ]

    @State private var multiSelection = Set<UUID>()

    var body: some View {
        Text("\(multiSelection.count) selections")
            .font(.largeTitle)
            .padding()

        NavigationStack {

            List(items, selection: $multiSelection) { item in
                HStack {
                    Text("Item \(item.text)")
                }
            }
            .navigationTitle("SwiftUI List Quiz")
            .toolbar { EditButton() }

        }
    }
}

#Preview {
    SwiftUI_List_EX_03()
}


