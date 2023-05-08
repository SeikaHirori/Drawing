//
//  sect_Part3dot2.swift
//  Drawing
//
//  Created by Seika Hirori on 5/8/23.
//

import SwiftUI

struct sect_Part3dot2: View {
    @State private var insetAmount: Double = 50.0
    
    var body: some View {
        return VStack {
            Trapezoid(insetAmount: insetAmount)
                .frame(width: 200, height: 100)
                .onTapGesture {
                    withAnimation {
                        insetAmount = Double.random(in: 10...90)
                        print("Inset amount: \(insetAmount)")
                    }
                }
        }
    }
}

struct sect_Part3dot2_Previews: PreviewProvider {
    static var previews: some View {
        sect_Part3dot2()
    }
}

struct Trapezoid: Shape {
    var insetAmount:Double
    
    func path(in rect: CGRect) -> Path {
        var path:Path = Path()
        
        path.move(to: CGPoint(x: 0, y: rect.maxY))
        
        path.addLine(to: CGPoint(x: insetAmount, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.maxX - insetAmount, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
        path.addLine(to: CGPoint(x: 0, y: rect.maxY))
        
        return path
    }
}
