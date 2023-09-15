//
//  TrianglePathView.swift
//  Drawing
//
//  Created by Phil Prater on 9/15/23.
//

import SwiftUI

struct TrianglePathView: View {
    var body: some View {
        Path { path in
            path.move(to: CGPoint(x: 200, y: 100))
            path.addLine(to: CGPoint(x: 100, y: 300))
            path.addLine(to: CGPoint(x: 300, y: 300))
            path.addLine(to: CGPoint(x: 200, y: 100))
//                path.closeSubpath()  // needed to make where start and end meet not weird.
        }
//            .fill(.blue)
//            .stroke(.blue, lineWidth: 10)
        // Using StrokeStyle struct gives us more style options and makes it so we don't need to call path.closeSubpath().
        .stroke(.blue, style: StrokeStyle(lineWidth: 10, lineCap: .round, lineJoin: .round))
    }
}

struct TrianglePathView_Previews: PreviewProvider {
    static var previews: some View {
        TrianglePathView()
    }
}
