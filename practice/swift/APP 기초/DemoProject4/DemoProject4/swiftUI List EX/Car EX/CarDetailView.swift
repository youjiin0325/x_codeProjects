import SwiftUI

/*
 상세뷰
 */


struct CarDetailView: View {
    //호출할 때 데이터 보내기
    let selectedCar: Car
    
    
    var body: some View {
        Form {
            Section{
                
                Image(selectedCar.imageName)
                    .resizable()
                    .cornerRadius(12.0)
                    .aspectRatio(contentMode: .fit)
                    .padding()
                
                Text(selectedCar.name)
                    .font(.headline)
                
                Text(selectedCar.description)
                    .font(.body)
                
                HStack{
                    Text("Hybrid").font(.headline)
                    Spacer()
                    Image(systemName: selectedCar.isHybrid ? "checkmark.circle" : "xmark.circle")
                    
                }
            }header: {
                Text("Car Detail")
            }
        }
    }
}

#Preview {
    CarDetailView(selectedCar: carData[0])
}
