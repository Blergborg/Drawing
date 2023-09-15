//
//  StrokeBorderView.swift
//  Drawing
//
//  Created by Phil Prater on 9/15/23.
//

import SwiftUI

struct StrokeBorderView: View {
    var body: some View {
        VStack {
            Circle()
            // stroke draws centered on the edge of the shape.
    //            .stroke(.blue, lineWidth: 40)
            // strokeBorder draws inside the edge of the shape.
                .strokeBorder(.blue, lineWidth: 40)
            
            // We need to make our custom Arc Shape conform to InsettableShape protocol.
            Arc(startAngle: .degrees(-90), endAngle: .degrees(90), clockwise: true)
                .strokeBorder(.blue, lineWidth: 40)
        }
    }
}

struct StrokeBorderView_Previews: PreviewProvider {
    static var previews: some View {
        StrokeBorderView()
    }
}
