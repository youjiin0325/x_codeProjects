//
//  AligmentView.swift
//  LifeCycleDemoView
//
//  Created by YOU on 10/30/23.
//

import SwiftUI


extension VerticalAlignment {
    private enum OneThird : AlignmentID {
        static func defaultValue(in d : ViewDimensions) -> CGFloat {
            d.height / 3
        }
        
    }
    static let onethird = VerticalAlignment(OneThird.self)
}

struct AligmentView: View {
    var body: some View {
        VStack(spacing: 50) {
            
            VStack(alignment: .trailing)
            {
                Text("This is some text")
                Text("This is some longer text")
                Text("This is some short")
                
            }
            HStack(alignment: .firstTextBaseline, spacing: 50) {
                Text("This is some text")
                    .font(.largeTitle)
                Text("This is some text")
                    .font(.body)
                Text("This is some text")
                    .font(.headline)
            }
            
            HStack(alignment: .onethird )
            {
                Rectangle()
                    .foregroundColor(.blue)
                    .frame(width: 50, height: 100)
                Rectangle()
                    .foregroundColor(.indigo)
                    .frame(width: 50, height: 100)
                    .alignmentGuide(.onethird, computeValue: { d in
                        d[VerticalAlignment.top]
                    })
                Rectangle()
                    .foregroundColor(.green)
                    .frame(width: 50, height: 100)
                Rectangle()
                    .foregroundColor(.green)
                    .frame(width: 50, height: 100)
                    .alignmentGuide(.onethird, computeValue: { d in
                        d[VerticalAlignment.bottom]
                    })
                    
                
            }
            
        }
    }
}

#Preview {
    AligmentView()
}
