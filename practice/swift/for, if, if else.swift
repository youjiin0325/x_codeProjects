//
//  main.swift
//  newww
//
//  Created by YOU on 2023/09/21.
//

import Foundation


//예제6
print("초 입력:", terminator: " " )
let totalSeconds = Int(readLine()!)!

let hours = totalSeconds / 3600
let minutes = (totalSeconds % 3600) / 60
let seconds = totalSeconds % 60
print("\(hours) 시 \(minutes) 분 \(seconds) 초")



//예제7
//+ 콤마 찍기,
print("노동 시간 입력:", terminator: " ")
var totalHours = Int(readLine()!)!
var hourlyPayment = 5000
var basicHour = 8
var overTime = Int(Double(hourlyPayment) * 1.5)
var totalPayment = 0
if totalHours >= 8 && totalHours <= 13 {
    totalPayment = ((totalHours - basicHour) * overTime + basicHour * hourlyPayment)
    
}else if totalHours > 8 {
 totalPayment = (totalHours * hourlyPayment)
}else if totalHours < 13 {
    print("시간을 초과했습니다.")
}
print("총 임금은", totalPayment, "원 입니다.")


//예제 8
print("정수를 입력하세요:", terminator: " ")
let num = Int(readLine()!)!
print(num % 2 == 0 ? "\(num)는(은) 홀수입니다" : "\(num)는(은) 홀수입니다")


//예제 9
print("첫 번째 정수 입력: ", terminator: " ")
let firstNum = Int(readLine()!)!
print("두 번째 정수 입력: ", terminator: " ")
let secondNum = Int(readLine()!)!
let res = firstNum - secondNum
print(res > 0 ? "두 수의 차: \(res)" : "두 수의 차: \(abs(res))")


//예제 10
print("농구공의 개수를 입력하세요:", terminator: " ")
let balls = Int(readLine()!)!
var allBall = 0
if balls % 5 == 0{
    allBall = balls / 5
}else {
    allBall = (balls / 5) + 1
}
print("필요한 상자의 개수: \(allBall)")



//고차함수로 풀어보기
//조건문 If문

//조건문 예제 01
print("age 입력", terminator: " ")
var age = Int(readLine()!)!

var adultAge:Int = 20

if adultAge >= 20 {
    print("당신은 성인 입니다.")
}else {
    print("당신은 미성년자 입니다.")
}



//조건문 예제 2---------------------ok
print("배수는:", terminator: " ")
let num = Int(readLine()!)!

if num % 3 == 0 && num % 5 == 0 {
    print("3과 5의 배수입니다")
}else {
    print("누구냐.. 넌?")
}




//조건문 예제 3 60점 이상 미만---------------------ok
print("점수:", terminator: " ")
let grade = Int(readLine()!)!

if grade >= 60 {
    print("합격입니다.")
}else if grade < 60 {
    print("불합격 입니다.")
}


//조건문 예제 4---------------------ok
print("정수입력:", terminator: " ")
let number = Int(readLine()!)!

if number > 0 {
    print("\(number) 양수 입니다")
}else if number < 0 {
    print("\(number) 음수 입니다.")
}else {
    print("\(number) 입니다.")
}



//조건문 예제 5 --   map고차함수...ㅂㄷㅂㄷㅂ
print("입력1:", terminator: " ")
let anyNum1 = Int(readLine()!)!

print("입력2:", terminator: " ")
let anyNum2 = Int(readLine()!)!

if anyNum1 > anyNum2 {
    print("\(anyNum1)이(가) 더 큽니다")
} else if anyNum1 < anyNum2 {
    print("\(anyNum2)이(가) 더 큽니다")
}else{
    print("두 수가 같습니다.")
}


//조건문 예제 6
//정보처리기사의 각 과목의 정답개수를 Int형 타입의 변수 5개를 선언하고 입력받으세요.
//한 과목이라도 8개 미만인 경우, “불합격입니다!”를 출력하고 총 개수가 60개 이상이면 “합격입니다!”를 출력하는 프로그램을 만들어보세요.
//1과목 소프트웨어 설계: 8
//2과목 소프트웨어 개발: 7
//3과목 데이터베이스 구축: 8
//4과목 프로그래밍 언어 활용: 8
//5과목 정보시스템 구축관리: 8
//불합격입니다!

print("1과목 소프트웨어 설계:" ,terminator: " ")
let subject1 = Int(readLine()!)!
print("2과목 소프트웨어 개발:" ,terminator: " ")
let subject2 = Int(readLine()!)!
print("3과목 데이터베이스 구축:" ,terminator: " ")
let subject3 = Int(readLine()!)!
print("4과목 프로그래밍 언어 활용:" ,terminator: " ")
let subject4 = Int(readLine()!)!
print("5과목 정보시스템 구축관리:" ,terminator: " ")
let subject5 = Int(readLine()!)!


var totalSubjects = subject1 + subject2 + subject3 + subject4 + subject5

if totalSubjects >= 60 {
    print("합격입니다.")
}else {
    print("불합격입니다.")
}


//조건문 예제 07. 다시 풀기----------------ok
//다음은 디즈니랜드 입장료 계산 프로그램입니다.
//기본료는 5000원이며 인원수에 따라 지불해야하는 프로그램을 만들어보세요.
//단, 미성년자인 경우 50%할인이 적용됩니다!

print("age 입력:", terminator:  " ")
let yourAge = Int(readLine()!)!
let originalPrice: Int = 5000
let discountPercentage = 0.5

if yourAge >= 20 {
    print("성인 요금입니다. \(originalPrice)")
}else {
    print("미성년자 요금입니다. \(Int(Double(originalPrice) * discountPercentage))")
}


//조건문 예제 08
//마트 계산대 프로그램입니다.
//10000원짜리 추석선물셋트를 구입했을 때 지불해야하는 금액을 계산해 보세요.
//단, 11개 이상 구매시에는 10%할인이 됩니다!
//
print("구매하려는 상품 갯수를 입력하세요:", terminator: " ")
let set = Int(readLine()!)!
var product = 10000
var normalPrice = product * set
var discountedPrice = normalPrice - Int(Double(product * set) * 0.1)
print(set <= 11 ? ("가격은 \(normalPrice) 원 입니다.") : ("가격은 \(discountedPrice)"))


//조건문 예제 09
//Int 타입의 변수 grade 를 선언하고 키보드로 값을 입력받으세요.
//Grade가
//90이상이면 “A학점입니다.”,
//80점 이상 90점 미만일 경우 “B학점입니다.”
//70점이상 80점 미만일 경우 “C학점입니다.” 를 출력하세요.

print("what's you grade?:", terminator: " ")
let grade = Int(readLine()!)!

if grade >= 90 {
    print("A학점입니다.")
}else if grade >= 80 && grade < 90 {
    print("B학점입니다.")
}else if grade >= 70 && grade < 80 {
    print("C학점입니다.")
}


//조건문 예제 10
//String 타입의 변수 data 를 선언하고 키보드로 값을 입력 받으세요.
//switch ~ case 문을 사용하여,
//data가 “안녕하세요.” 일 때,“네, 안녕하세요!” 출력,
//data 가 “반가워요.” 일 때, “네, 반가워요!” 출력,
//data가 “수고하세요.” 일 때, “네, 수고하세요!” 출력,
//그 외 다른 문장일 때는 “잘못 입력하셨습니다.” 라고 출력하는 프로그램을 작성하세요.
