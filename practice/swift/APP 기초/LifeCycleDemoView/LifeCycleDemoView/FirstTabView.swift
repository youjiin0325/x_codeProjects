

import SwiftUI

struct FirstTabView: View {
    @State var title = "View Onew"
    var body: some View {
        Text(title)
            .onAppear(perform: {
                print("onAppear triggered")
            })
            .onDisappear(perform: {
                print("onDisappear triggered")
            })
            //내부에서 task 처리를 만들어서 구현
            .task(priority: TaskPriority.background) {
                
             title = await changeTitle()
            }
    }
    
    func changeTitle () async -> String {
        sleep(5)
        return "비동기 처리 완료"
    }
}

#Preview {
    FirstTabView()
}
