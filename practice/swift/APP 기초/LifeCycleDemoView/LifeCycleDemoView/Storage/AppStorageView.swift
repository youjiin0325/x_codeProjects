/*
 
 코드가 실행되는 시점이 다릅니다.
 init(): 처음 뷰가 만들어질때 실행됨
 onAppear: 뷰가 만들어지고, 화면에 나타난 뒤 실행됨
 userName이란 변수가 만들어진 뒤에 onAppear에서 userName에 값을 넣어줘서 하나의 값이 유지됩니다.
 
 */

import SwiftUI

struct UserName :Encodable,Decodable {
    var firstName: String
    var secondName: String
}


struct AppStorageView: View {
    
    @AppStorage("mytext")  var editorText : String = "Simple Text"
    @AppStorage("username") var namestore: Data = Data()
    
    @State var username = UserName(firstName: "Yu", secondName:"Jiin")

    var body: some View {
            VStack {
                HStack {
                    TextField("firstname", text: $username.firstName)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .onAppear() {
                            let decoder = JSONDecoder()

                            if let name = try? decoder.decode(UserName.self, from: namestore) {
                                username = name
    //                            editorText = "\(name.firstName), \(name.secondName)"
                            }
                        }
                    TextField("secondname", text: $username.secondName)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                }
                .padding()

                Button("username save") {
                    let encoder = JSONEncoder()

                    if let data = try? encoder.encode(username) {
                        namestore = data
    
                    }
                }

                TextEditor(text: $editorText)
                    .padding()
                    .font(.largeTitle)
            }
            .background(Color.teal)
        }
    }

    #Preview {
        AppStorageView()
    }
    
