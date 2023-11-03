
import SwiftUI

/*
1. 프로젝트 준비
 
2. 프로젝트 준비
 - 데이터 준비 : 차량 이미지 에셋파일 프로젝트에 포함.
 - 에셋에 포함되어 있는 차량 이미지와 스펙 정보 또는 항목 포함되어 있는 carData.Json 프로젝트에 포함
 - 자동차 모델을 나타내는 Car 구조체 선언
 - Identifiable 프로토콜을 따르도록 선언되어 각 인스턴스는 List 뷰에서 식별가능
 - JSON 데이터 로딩
   * loadJson 함수의 코드는 json 파일을 로드하는 표준방식으로 구현
 - 데이터 저장소(struct) 만듬
   * list 뷰를 최신 데이터로 유지하기 위해 프로퍼티를(@Published) 포함(UI 위주로 계획하는 것도 좋음)
 
 3. 사용자 인터페이스 설계
 - Content view (차량 목록)
 - Datail view (차량 상세 정보)
 - 리스트 추가
 - Add a new car information 차량 정보를 추가하는 뷰
 - 차량정보 Add, Edit
 4.
 
 */


//자동차 모델을 나타내는 Car 구조체 선언
struct Car  : Codable, Identifiable {
    var id : String
    var name: String
    
    var description: String
    var isHybrid: Bool
    
    var imageName: String
}

//JSON 데이터 로딩
var carData: [Car] = loadJson("carData.json")


//데이터 저장소 구조체 추가
class CarStore : ObservableObject {
    
    @Published var cars : [Car]
    //car 데이터가 없으면 []빈배열을 보냄
    init(cars: [Car] = [] ) {
        self.cars = cars
    }
    
    
}



//사용자 인터페이스 콘텐트 뷰 설계
struct ListNavDemo: View {
    
    @StateObject var carStore = CarStore(cars: carData)
    
    //add 후 메인화면으로 돌아가기
    @State private var stackPath = NavigationPath()
    
    var body: some View {
        //$stackPath ($)바인딩해서 쓰기 때문에 다시 메인으로 돌아감
        NavigationStack(path: $stackPath) {
            List{
                ForEach(0..<carStore.cars.count, id: \.self) {i in
                    NavigationLink(value: i) {
                        ListCell(car: carStore.cars[i])
                    }
                }
                .onDelete(perform: deleteItem)
                .onMove(perform: moveItem)
            }
            //각 자동차 정보로 이동
            .navigationDestination(for: Int.self) { i in
                CarDetailView(selectedCar: carStore.cars[i])
            }
            
            .navigationDestination(for: String.self) { _ in
                AddNewCarView(carStore: self.carStore, path: $stackPath)
            }
            
            .navigationTitle(Text("EV Cars"))
            .toolbar{
                ToolbarItem(placement: ToolbarItemPlacement.navigationBarLeading) {
                    NavigationLink(value: "Add Car") {
                        Text("Add")
                    }
                }
                
                ToolbarItem(placement: ToolbarItemPlacement.navigationBarTrailing) {
                        EditButton()
                    }
                    
                }
            }
            
        }
    
    func  deleteItem(at offsets: IndexSet ) {
        carStore.cars.remove(atOffsets: offsets)
    }
    func moveItem(from source: IndexSet, to destication: Int){
        carStore.cars.move(fromOffsets: source, toOffset: destication)
        
    }
    
}


#Preview {
    ListNavDemo()
}

struct ListCell: View {
    
    var car: Car
    
    var body: some View {
        HStack{
            Image(car.imageName)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 100, height: 60)
            Text(car.name)
        }
    }
}
