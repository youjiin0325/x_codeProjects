

import SwiftUI

struct AppStorageView_: View {

    @SceneStorage("firstText") private var editText = "Loading...."
    
    var body: some View {
        
        VStack {
            Text(editText)
//            TextEditor(text: $editText)
                .foregroundStyle(.black)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .onAppear(perform: {
                    print("onApear --> ")
                })
                .onDisappear(perform: {
                    print("onDisappear -->")
                })
                .task (priority: TaskPriority.background) {
                    editText = await changedText()
                }
            }
        }
        func changedText() async -> String {
            sleep(2)
            return "비동기 처리중"
        }
    }


#Preview {
    AppStorageView_()
      
}
