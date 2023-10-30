

import SwiftUI

extension Image {
    func iamgeSignUpView() -> some View {

        self
            
            .resizable()
            .scaledToFill()
            .frame(width: 100,height: 100)
        
    }
}
extension Image {
    func iamgeSignDownView() -> some View   {

        self
            
            .resizable()
            .scaledToFill()
            .frame(width: 100,height: 100)
        
    }
}

extension Button {
    func buttonStyle() -> some View   {
        self
            .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 30)
            .background(Color.indigo)
            .foregroundColor(.white)
            .cornerRadius(10)
        
    }
}

struct AligmentView_EX2: View {
    
    @State var iconUp = "square.and.arrow.up"
    @State var iconDown = "square.and.arrow.down"
    
    var body: some View {
        VStack (spacing: 60){
            Image(systemName: "square.and.arrow.up")
                .iamgeSignUpView()
            HStack(spacing:50){
                Button("UP") {
        // down 이미지 일때 위치 바꾸기
        if iconUp.hasSuffix("down") { (iconUp, iconDown) = (iconDown, iconUp) }}
            .buttonStyle()

        Spacer()

        Button("DOWN") {
        // up 이미지 일때 위치 바꾸기
            if iconDown.hasSuffix("up") { (iconDown, iconUp) = (iconUp, iconDown)  }}
        .buttonStyle()
            }
            Image(systemName: "square.and.arrow.down")
                .iamgeSignDownView()
        }
    }
    
}

#Preview {
    AligmentView_EX2()
}
