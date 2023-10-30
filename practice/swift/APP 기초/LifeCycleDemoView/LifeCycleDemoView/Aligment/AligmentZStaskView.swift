//
//  AligmentZStaskView.swift
//  LifeCycleDemoView
//
//  Created by YOU on 10/30/23.
//

import SwiftUI

extension VerticalAlignment {
    private enum CrossAligment: AlignmentID {
        static func defaultValue(in d: ViewDimensions) -> CGFloat {
            d[.bottom]
        }
    }
    static let crossAlignment = VerticalAlignment(CrossAligment.self)
}

extension HorizontalAlignment {
   enum myHorizontal: AlignmentID {
       static func defaultValue(in d: ViewDimensions) -> CGFloat {
              d[HorizontalAlignment.center]
       }
    
   }
    static let myAligment = HorizontalAlignment(myHorizontal.self)
}

extension VerticalAlignment {
    private enum MyVerticalt: AlignmentID {
        static func defaultValue(in d: ViewDimensions) -> CGFloat {
            d[VerticalAlignment.center]
        }
    }
    static let myVerticalt = VerticalAlignment(MyVerticalt.self)
}

extension Alignment {
    static let myAlignment = Alignment(horizontal: HorizontalAlignment.myAligment, vertical: VerticalAlignment.myVerticalt)
}




// 스택 정렬 교차(스택 겹치기) p.291
struct AligmentZStaskView: View {
    var body: some View {
//        HStack(alignment: .crossAlignment, spacing: 20) {
//            Circle()
//                .foregroundColor(.purple)
//                .frame(width: 100)
//                .alignmentGuide(.crossAlignment, computeValue: { d in
//                    d[VerticalAlignment.center]
//                })
//            VStack {
//                Rectangle()
//                    .foregroundColor(.green)
//                    .frame(width: 100, height: 100)
//                Rectangle()
//                    .foregroundColor(.red)
//                    .frame(width: 100, height: 100)
//                    .alignmentGuide(.crossAlignment, computeValue: { d in
//                        d[VerticalAlignment.center]
//                    })
//                Rectangle()
//                    .foregroundColor(.blue)
//                    .frame(width: 100, height: 100)
//
//                Rectangle()
//                    .foregroundColor(.yellow)
//                    .frame(width: 100, height: 100)
//            }
//        }
//        .padding()
        ZStack(alignment:Alignment.myAlignment ){
            Rectangle()
                .foregroundColor(.green)
                .alignmentGuide(HorizontalAlignment.myAligment) { d in
                    d[.trailing]
                }
                .alignmentGuide(VerticalAlignment.myVerticalt) { d  in
                    d[.bottom]
                }
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100)
            Rectangle()
                .foregroundColor(.red)
                .alignmentGuide(HorizontalAlignment.myAligment) { d in
                    d[HorizontalAlignment.center]
                }
                .alignmentGuide(VerticalAlignment.myVerticalt) { d  in
                    d[VerticalAlignment.top]
                }
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100)
            Circle()
                .foregroundColor(.orange)
                .alignmentGuide(HorizontalAlignment.myAligment) { d in
                    d[HorizontalAlignment.leading]
                }
                .alignmentGuide(VerticalAlignment.myVerticalt) { d  in
                    d[VerticalAlignment.bottom]
                }
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100)
        }
    }
}
#Preview {
    AligmentZStaskView()
}
