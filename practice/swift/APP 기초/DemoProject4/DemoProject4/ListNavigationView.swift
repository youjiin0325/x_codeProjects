//
//  ListNavigationView.swift
//  DemoProject4
//
//  Created by YOU on 10/31/23.
//

import SwiftUI

//동적 리스트
// - 리스트에 표시할 데이터는 Identifiable 프로토콜을 따라야 함
// -  id 프로퍼티 필수 : 각 항목을 고유하게 식별하는 용도
// -  UUID() 메서드는 각 항목의 고유한 id 를 자동으로 생성하는데 사용
struct TodoItem : Identifiable, Hashable /*구분할 수 있는 프로토콜 */{
    var id = UUID()
    var task: String
    var imageName: String
}


struct ListNavigationView: View {
    
    @State var listData :  [TodoItem] = [
    TodoItem( task: "Take out the trash", imageName: "trash.circle.fill"),
    TodoItem( task: "Pick up the kids", imageName: "person.2.fill")
    ]
    
    @State private var toggleStatus = true
    
    var body: some View {
        NavigationStack{
            
            List(listData) { item in
                NavigationLink(value: item.task) {
                HStack{
                    Image(systemName: item.imageName)
                    Text(item.task)
                   }
                 }
               }
            .navigationDestination(for: String.self) { task in 
                Text("Selected Task = \(task)")
            }
         }
        NavigationStack{
            
            VStack {
                List{
                    Text("wash the car")
                        .listRowSeparator(.hidden)
                    Text("Vaccum house")
                    Text("Pick up kids from school")
                        .listRowSeparatorTint(.green)
                    Text("Vaccum house")
                        .listRowSeparatorTint(.red)
                    Text("Order pizza")
                        .listRowBackground(Color.indigo)
                }
                List(listData) { item in
                    HStack {
                        Image(systemName: item.imageName)
                        Text(item.task)
                    }
                    
                }
                //동적 리스트 foreach 사용함
                // Section ( header: Text("name") { }
                List{
                    Section ( header: Text("Setting")) {
                        Toggle(isOn: $toggleStatus) {
                            Text("Allow Ntification")
                        }
                    }
                    
                    NavigationLink(value:listData.count) {
                        Text("View task count")
                    }
                    
                    Section ( header: Text("To do task")) {
                        ForEach(listData) { item in
                            NavigationLink(value: item.task) {
                                HStack{
                                    Image(systemName: item.imageName)
                                    Text(item.task)
                                }
                            }
                         }
                        .onDelete(perform: {indexSet in
                            //데이터 소스에서 항목을 삭제하는 코드
                            
                        })
                        .onMove(perform: { indices, newOffset in
                        // 항목을 재배열하는 코드 p.311
                        })
                    }
                    
                    
                }
               
                
            }
            .navigationDestination(for: TodoItem.self) { i in
                Text("number of tasks  = \(i.imageName)")
                
            }
            
            .navigationDestination(for: Int.self) { count in
                Text("number of tasks  = \(count)")
                
            }
            
            .navigationDestination(for: String.self) { task in
                Text("Selected Task = \(task)")
                
            }
            
            
            /*새로고침 동작 추가 : 시간이 많이 소요되는 작업을 구조화된 동시성을 사용하여 비동기로 작업 수행 */
            .refreshable {
                listData = [
                    TodoItem( task: "order dinner", imageName: "dollarsign.circle.fill"),
                    TodoItem( task: "call finacial adviser", imageName: "phone.fill")
                ]
            }
        }
    }
}
#Preview {
    ListNavigationView()
}
