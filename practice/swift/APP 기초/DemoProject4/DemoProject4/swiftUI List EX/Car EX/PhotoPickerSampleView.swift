/*
 
 이미지 가져오는 코드 짱짱 중요
 */

import SwiftUI
import PhotosUI

struct PhotoPickerSampleView: View {
    
    @State private var selectedPhoto: PhotosPickerItem?
    @State private var image: Image?
    var body: some View {
        NavigationStack{
            ZStack{
                image?
                    .resizable()
                    .scaledToFit()
            }
            //이미지 가져오기
            .toolbar{
                PhotosPicker(selection: $selectedPhoto,
                             matching: .images) {
                    Image(systemName: "photo.fill")
                }
            }
            //ㅇ이미지 가져오는데 시간이 걸리기 때문에 비동기 처리하기
            .task(id: selectedPhoto) {
            //가져올때 파일이 없을 수 있기 때문에 예외처리 필요
            image = try? await selectedPhoto?.loadTransferable(type: Image.self)
            }
        }
    }
}

#Preview {
    PhotoPickerSampleView()
}
