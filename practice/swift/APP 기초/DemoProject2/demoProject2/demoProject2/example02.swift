//
//  example02.swift
//  demoProject2
//
//  Created by YOU on 10/11/23.
//

import SwiftUI

//예제 2 급여계산기
struct Example02: View {
    @State private var totalHours = ""
    @State private var calculatedPayment = ""
    @State private var showCalculatedPayment = false

    var body: some View {
       
            VStack {
                Label("급여 계산기", systemImage: "calendar.badge.clock")
                    .font(.title)
                    .foregroundColor(.black)

                TextField("근무 시간을 입력하세요", text: $totalHours)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .keyboardType(.decimalPad)
                    .frame(width: 350)
                //반복 코드
                    .modifier(Standard())
                    .padding(10)

                //급여가 계산되면 show
                //true 이면
                if showCalculatedPayment {
                    Text(calculatedPayment)
                        .padding(10)
                        .frame(width: 350)
                }

                Button(action: calculateTotalPayment) {
                    Text("계산하기")
                        .padding(10)
                        .background(Color.white)
                        .foregroundColor(.black)
                    //반복 코드
                        .modifier(Standard())
                }
            }
            .padding(100)
        
    }

    func calculateTotalPayment() {
        let hourlyRate = 10000.0
        let overTimeRate = 1.5

        if let hours = Double(totalHours) {
            var payment = 0.0

            if hours > 8 {
                payment = (8 * hourlyRate) + ((hours - 8) * hourlyRate * overTimeRate)
            } else {
                payment = hours * hourlyRate
            }

            calculatedPayment = String( "총 급여는 \(payment) 입니다")
            showCalculatedPayment = true
        } else {
            calculatedPayment = "시간을 정확하게 입력하세요"
            showCalculatedPayment = false
        }
    }
    //커스텀 수정자(공통된 것)
    struct Standard: ViewModifier {
        func body(content: Content) -> some View {

            content
                .border(Color.gray, width: 0.5)
                .shadow(color: Color.gray, radius: 2, x: 2, y: 2)
        }

    }

}

#Preview {
    Example02()
}

