
//사용자의 기본 설정이나 마지막에 접근했을 때의 상태로 화면을 복구
//딕셔너리처럼 키와 값 쌍으로 저장하고 가져올 수 있음
import SwiftUI

struct StorageDemoView: View {
    var body: some View {
        TabView{
            SceneStorageView()
                .tabItem{
                    Image(systemName: "circle.fill")
                    Text(" SceneStorage")
                }
            AppStorageView()
                .tabItem{
                    Image(systemName: "aquare.fill")
                    Text(" AppStorage")
                }
        }
    }
}

#Preview {
    StorageDemoView()
}
