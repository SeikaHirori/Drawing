//
//  impl_Part1dot2.swift
//  Drawing
//
//  Created by Seika Hirori on 5/1/23.
//

import SwiftUI

struct impl_Part1dot2: View {
    var body: some View {
        return VStack {
            Text("Hello, World!")
        }
    }
}

struct impl_Part1dot2_Previews: PreviewProvider {
    static var previews: some View {
        impl_Part1dot2()
    }
}

struct Triangle: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        path.move(to: CGPoint(x: rect.midX, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.midX, y: rect.minY))
        
        
        return path
    }
}
