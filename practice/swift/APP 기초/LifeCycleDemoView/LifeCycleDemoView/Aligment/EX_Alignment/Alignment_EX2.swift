
import SwiftUI

struct Alignment_EX2: View {
    var body: some View {
        
        /* SwiftUI 스택 정렬 예제 02*/
        ZStack(alignment: .topLeading) {
                   Rectangle()
                       .fill(Color.red)
                       .frame(width: 100, height: 100)
                   Rectangle()
                       .fill(Color.blue)
                       .frame(width: 50, height: 50)
                       
                      
               }
    }
}

#Preview {
    Alignment_EX2()
}
