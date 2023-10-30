
import SwiftUI

struct Alignment_EX3: View {
    var body: some View {
      VStack(){
            
          HStack {
                          Circle()
                              .fill(Color.green)
                              .frame(width: 50, height: 50)
                          Circle()
                              .fill(Color.yellow)
                              .frame(width: 50, height: 50)
                          Circle()
                              .fill(Color.orange)
                              .frame(width: 50, height: 50)
                      }
            }
          }
        }



#Preview {
    Alignment_EX3()
}
