
import SwiftUI
struct IamgeView: View {

    var body: some View {
        Image("0.thumb128")
            .resizable()
            .scaledToFill()
            .frame(width: 100,height: 100)
            .clipShape(Circle())

    }
}
//struct ButtonStyle {
//    var body:some View {
//        Button(action: {
//        }) {
//            Text("입금")
//                .frame(width: 50)
//                .padding(10)
//                .background(Color.yellow)
//                .cornerRadius(10)
//                .foregroundColor(.black)
//
//        }
//    }
//}

struct AligmentView_EX: View {
    var body: some View {
        VStack(spacing: 50) {
            Spacer()
            HStack (alignment: .firstTextBaseline, spacing: 60) {
                Image(systemName: "lessthan")
                    .frame(width: 100, height: 100)
                    .font(.headline)
                Text("26주 적금 👏")
                    .frame(width: 100, height: 100)
                    .font(.headline)
                
                Image(systemName: "gearshape")
                    .frame(width: 100, height: 100)
                
            }
            VStack{
                Text("8주차 도전중")
                    .font(.headline)
                Text("108,000원")
                    .font(.largeTitle)
            }
            
           
            VStack (spacing:20){
                IamgeView()
    
                HStack (spacing: 20) {
                    IamgeView()
                    IamgeView()
                    IamgeView()
                    
                }
                HStack (spacing: 20) {
                    IamgeView()
                    IamgeView()
                    IamgeView()
                    
                }
            }
            Spacer()
            
            HStack(alignment: .bottom, spacing: 50) {
               
                Button(action: {
                }) {
                    Text("입금")
                        .frame(width: 50)
                        .padding(10)
                        .background(Color.yellow)
                        .cornerRadius(10)
                        .foregroundColor(.black)
      
                }
                Button(action: {
                }) {
                    Text("출금")
                        .frame(width: 50)
                        .padding(10)
                        .background(Color.yellow)
                        .cornerRadius(10)
                        .foregroundColor(.black)
                }
                Button(action: {
                }) {
                    Text("해지")
                        .frame(width: 50)
                        .padding(10)
                        .background(Color.yellow)
                        .cornerRadius(10)
                        .foregroundColor(.black)
                }
            }
            .padding(20)
            Spacer()
    
            
        }
        .padding()
    }
   
}
#Preview {
    AligmentView_EX()
}
