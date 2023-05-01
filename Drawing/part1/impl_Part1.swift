//
//  impl_Part1.swift
//  Drawing
//
//  Created by Seika Hirori on 5/1/23.
//

import SwiftUI

struct impl_Part1: View {
    var body: some View {

        return VStack {
            Path { path in
                path.move(to: CGPoint(x: 200, y: 100))
                path.addLine(to: CGPoint(x: 100, y: 300))
                path.addLine(to: CGPoint(x: 300, y: 300))
                path.addLine(to: CGPoint(x: 200, y: 100))
            }
//            .fill(Color.blue)
            .stroke(.blue, lineWidth: 10)
        }
    }
}

struct impl_Part1_Previews: PreviewProvider {
    static var previews: some View {
        impl_Part1()
    }
}
