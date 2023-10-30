
import SwiftUI
import Foundation

class ColorData: ObservableObject {
    @Published var colorIndex = 0 {
        willSet {
            objectWillChange.send()
        }
    }

    @Published var colors: [Color] = [.black, .red, .green, .blue]
    @Published var colornames = ["Black", "Red", "Green", "Blue"]
    
    init() {
    
    }
 
   func text() -> String{
        return "what's your color?"
    }
}


struct  SceneStorageView_: View {
   
    @StateObject var colorData: ColorData = ColorData()
    @State var textFields :String = "what's your color?"
    
    var body: some View {
       
            
            VStack {
                Spacer()
                TextField("What's your color?", text : $textFields )
                    .padding(40)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .foregroundColor(colorData.colors[colorData.colorIndex])
                
                
                Spacer()
                Picker(selection: $colorData.colorIndex, label: Text("Pick One")) {
                    ForEach(0..<colorData.colornames.count, id: \.self) {
                        Text(colorData.colornames[$0])
                            .foregroundStyle(.black)
                            .fontWeight(.heavy)
                    }
                }
                .pickerStyle(.wheel)
            }
            .environmentObject(colorData)

    }
   
}

#Preview {
    SceneStorageView_()
}
