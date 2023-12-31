
import SwiftUI


//새로운 자동차 추가
struct AddNewCarView: View {
    //add button 생성 -> 목록을 전달해주면 받아서 목록 추가 (버튼 클릭하면 CarStore 전달)
    @StateObject var carStore : CarStore
    
    @Binding var path : NavigationPath
    
    @State private var isHybrid = false
    @State private var name :String = ""
    @State private var description :String = ""
    
    //입력받는 뷰
    
    var body: some View {
        Form{
            Section{
                Image(systemName: "car.fill")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding()
                
                DataInput(title: "Model", userInput: $name)
                DataInput(title: "Description", userInput: $description)
                
                Toggle(isOn:$isHybrid) {
                    Text("Hybrid")
                        .font(.headline)
                }
                .padding()
                
            } header: {
                Text("Car Detail")
            }
        }
        Button{
            addNewCarView()
        }label: {
            Text("Add Car")
        }
    }
    
    
    func  addNewCarView() {
        
        //프로젝트 간략화를 위해 사진 라이브러리에서 사진을 가져오지 않고 기존 이미지 재사용
        let newCar = Car(id: UUID().uuidString, name: name, description: description, isHybrid: isHybrid, imageName: "tesla_model_3")
        
        carStore.cars.append(newCar)
        
        
        path.removeLast()
    }
}


//새로운 차량의 상세 정보 입력을 위한 하위 뷰
struct DataInput : View {
    var title : String
    // @Binding 연결하는 통로같은건가?
    @Binding var userInput:String
    
    
    var body: some View {
        VStack{
            Text(title)
                .font(.headline)
            TextField("Enter \(title)", text: $userInput)
                .textFieldStyle(RoundedBorderTextFieldStyle())
        }
        .padding()
    }
}


// 엑세스 항 수 없는 탐색 뷰를 전달할 것으로
//#Preview {
//    //텍스트를 위해 차량 목록을 전달
//    AddNewCarView(carStore: CarStore (cars:carData))
//}
