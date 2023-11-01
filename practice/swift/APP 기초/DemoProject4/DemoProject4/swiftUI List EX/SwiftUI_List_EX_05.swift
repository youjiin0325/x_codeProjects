/*
 SwiftUI List 예제 05

 List 를 사용하여 다음과 같은 화면을 구현해보세요.
 화면에는 "SwiftUI List Quiz" 라는 제목이 있습니다.
 List 에는 10개의 행이 있으며, 각 행에는 "Item 1", "Item 2", ... , "Item 10" 이라는 텍스트와 오른쪽에 삭제 버튼이 있습니다.
 삭제 버튼을 탭하면 해당 행이 삭제되고, 나머지 행들이 재정렬됩니다.
 */

import SwiftUI

struct SwiftUI_List_EX_05: View {
    struct Item: Identifiable {
            let id = UUID()
            let image: String
            let text: String
        }

        @State var items = [
            Item(image: "appplelogo", text: "Apple"),
            Item(image: "swift", text: "Swift"),
            Item(image: "xcode", text: "Xcode"),
            Item(image: "macos", text: "macOS"),
            Item(image: "ios", text: "iOS")
        ]

        var body: some View {
            Text("")
                .font(.largeTitle)
                .padding()
            NavigationStack {

                List {
                    ForEach( items ) { item in
                        HStack {
                            Text("Item \(item.text)")
                        }
                    }
                    .onDelete(perform: { indexSet in
                        items.remove(atOffsets: indexSet)
                    })
                    .onMove(perform: { indices, newOffset in
                        print("\(indices)")
                        items.move(fromOffsets: indices, toOffset: newOffset)
                    })
                }
                .navigationTitle("SwiftUI List Quiz")
                .toolbar { EditButton() }

            }

        }
}


#Preview {
    SwiftUI_List_EX_05()
}
