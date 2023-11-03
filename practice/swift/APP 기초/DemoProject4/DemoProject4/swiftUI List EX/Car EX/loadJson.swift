/*
 에러처리 등 데이터 가져오기
 */
import SwiftUI


//<T> 어떤 타입이 들어와도 다 처리
func loadJson<T: Decodable>(_ filename: String) -> T {
    //데이터만들기
    let data: Data
    
    //데이터 파일 불러오기
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil) else {
        fatalError("\(filename) not found")
    }
    do{
        //데이터 가져올 때 변환하기
        data = try Data(contentsOf: file)
    }catch {
        //에러가 있다면 에러 보여주기
        fatalError("Could not load\(filename): \(error)")
    }
    
    do{
        return try JSONDecoder().decode(T.self , from: data)
        
    }catch {
        fatalError("Unable to parse\(filename): \(error)")
    }
    
    
    
}
