/*
 데이터 지속성 예제 01
 AppStorate 를 사용하여 사용자의 선호하는 테마 색상을 저장하고, 앱의 모든 뷰에 적용하는 코드를 작성하세요.
 첫 화면에 컬러 피커로 사용자 색상 선택이 가능
 두 번째 화면 바탕색을 선택한 색으로 채움
 앱을 종료 후 다시 실행하면 선택한 색상으로 복원
 
 데이터 지속성 예제 02
 SceneStorage 또는 AppStorate 를 사용하여 탭바 뷰의 선택된 인덱스를 저장하고,
 앱이 백그라운드로 또는 전 화면으로 돌아갔다가 다시 활성화될 때 복원하는 코드를 작성하세요.
 
 
 데이터 지속성 예제 03
 SceneStorage 또는 AppStorate 를 사용하여 사용자의 이름을 저장하고,
 텍스트 필드에 입력하면 자동으로 업데이트 되는 코드를 작성하세요.
 
 
 데이터 지속성 예제 04
 SceneStorage 또는 AppStorate 를 사용하여 네비게이션 뷰의 현재 선택된 항목을 저장하고,
 앱이 백그라운드로 또는 종료 했다가 다시 실행/활성화될 때 복원하는 코드를 작성하세요.
 
 */

import SwiftUI


struct ColorPicker: View {
    @EnvironmentObject var colorData : ColorPickOne
   
    var body: some View {
       
        VStack{
            Text("Second View")
                .font(.largeTitle)
        }
       
    }
}
#Preview {
    ColorPicker()
}
