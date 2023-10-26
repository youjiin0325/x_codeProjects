import UIKit

//옵셔널 체이닝 예제 01
//
//다음 코드에서 person의 name과 age를 출력하려고 합니다.
//옵셔널 체이닝을 사용하여 코드를 완성하세요.

// 예시코드
struct Person {
    var name: String?
    var age: Int?
}

var person: Person? = Person(name: "Kim", age: 25)
print(person?.name ?? "모룸")
print(person?.age ?? 0)

//옵셔널 바인딩
if let unwrappedPerson = person {
    print(unwrappedPerson.name)
} else {
    print("Person is nil")
}




//옵셔널 체이닝 예제 02
//
//다음 코드에서 book의 title과 book.author의 name을 출력하려고 합니다.
//옵셔널 체이닝을 사용하여 코드를 완성하세요.
// 예시코드
struct Author {
    var name: String?
}

struct Book {
    var title: String?
    var author: Author?
}

var book: Book? = Book(title: "The Little Prince", author: Author(name: "Antoine de Saint-Exupéry"))

print(book?.title ?? "없음")              // The Little Prince
print(book?.author?.name ?? "없음")       // Antoine de Saint-Exupéry

//옵셔널 바인딩
if let getTitle = book?.title ,let getAuthor = book?.author?.name{
    print(getTitle)
    print(getAuthor)
    
}else {
    print("error")
}
  


//옵셔널 체이닝 예제 03
//
//다음 코드에서 numbers 배열의 첫번째 원소에 10을 더한 값을 출력하려고 합니다.
//옵셔널 체이닝을 사용하여 코드를 완성하세요.
// 예시코드
var numbers: [Int]? = [1, 2, 3]

//강제 언랩핑
print((numbers?[0] ?? 0) + 10)

//옵셔널 바인딩
if let firstNum = numbers?[0] {
    print(firstNum + 10)
}else  {
    print("numbers error")
}




//옵셔널 체이닝 예제 04
//
//다음 코드에서 students 딕셔너리의 "Lee" 키에 해당하는 값에 1을 더한 값을 출력하려고 합니다.
//옵셔널 체이닝을 사용하여 코드를 완성하세요.
// 예시코드
var students: [String: Int]? = ["Kim": 90, "Lee": 80, "Park": 85]
//옵셔널 체이닝
print(students?["Lee"]? .advanced(by: 1))

//옵셔널 바이닝
if let sumNameLee = students?["Lee"] {
    print(sumNameLee + 1)
}else {
    print("error ")
}



//옵셔널 체이닝 예제 05
//
//다음 코드에서 animal의 speak 메서드를 호출하려고 합니다.
//옵셔널 체이닝을 사용하여 코드를 완성하세요.
// 예시코드
class Animal {
    func speak() {
        print("...")
    }
}

class Dog: Animal {
    override func speak() {
        print("Woof")
    }
}

var animal: Animal? = Dog()
animal?.speak()



//옵셔널 체이닝 예제 06
//
//다음 코드에서 matrix의 transpose 메서드를 호출하여 결과를 출력하려고 합니다.
//옵셔널 체이닝을 사용하여 코드를 완성하세요.

struct Matrix {
    var elements: [[Int]]

    func transpose() -> Matrix {
        var result = [[Int]]()
        for i in 0..<elements[0].count {
            var row = [Int]()
            for j in 0..<elements.count {
                row.append(elements[j][i])
            }
            result.append(row)
        }
        return Matrix(elements: result)
    }
}

var matrix: Matrix? = Matrix(elements: [[1, 2, 3], [4, 5, 6]])
print(matrix?.transpose().elements ?? [[Int]]())




//옵셔널 체이닝 예제 07
//
//다음 코드에서 옵셔널 체이닝을 이용하여 numbers 배열의 모든 요소를 더한 값을 출력하세요.
//numbers가 nil이면 0을 출력하세요.


var numbers7: [Int]? = [1, 2, 3, 4, 5]
print(numbers7?.reduce(0,+) ?? 0)


//func optionalNumbers(_ n:[Int]?) -> Int {
//    guard let unrappedNum = n  else {
//        return 0
//    }
//    return unrappedNum.reduce(0,+)
//}
//let sumNum: Int? = optionalNumbers?(numbers)
//print(sumNum?) //Optional(15)



//옵셔널 체이닝 예제 08
//
//다음 코드에서 옵셔널 체이닝을 이용하여 students 배열의 모든 요소의 score 속성의 평균값을 출력하세요.
//students가 nil이거나 비어있으면 0을 출력하세요.

struct Student {
    var name: String
    var score: Int
}

var students8: [Student]? = [Student(name: "Kim", score: 80),
                            Student(name: "Lee", score: 90),
                            Student(name: "Park", score: 85)]


print((students8?.reduce(into: 0){ $0 += $1.score } ?? 0)/(students8?.count ?? 1))
