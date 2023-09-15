//
//  MyShapesView.swift
//  Drawing
//
//  Created by Phil Prater on 9/15/23.
//

import SwiftUI

struct MyShapesView: View {
    var body: some View {
        VStack {
            Triangle()
//                .fill(.red)
                .stroke(.red, style: StrokeStyle(lineWidth: 10, lineCap: .round, lineJoin: .round))
                .frame(width: 300, height: 300)
            
            Spacer()
            
            Arc(startAngle: .degrees(0), endAngle: .degrees(110), clockwise: true)
                .stroke(.blue, lineWidth: 10)
                .frame(width: 300, height: 300)
        }
        
    }
}

struct MyShapesView_Previews: PreviewProvider {
    static var previews: some View {
        MyShapesView()
    }
}
