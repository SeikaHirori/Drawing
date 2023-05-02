//
//  impl_Part1dot4.swift
//  Drawing
//
//  Created by Seika Hirori on 5/2/23.
//

import SwiftUI

struct impl_Part1dot4: View {
    var body: some View {
        return VStack {
            //            Circle()
            ////                .stroke(.blue, lineWidth: 45)
            //                .strokeBorder(.blue, lineWidth: 40)
            
            Arc(startAngle: .degrees(-90), endAngle: .degrees(90), clockwise: true)
                .strokeBorder(.blue, lineWidth: 40)
        }
    }
}

struct impl_Part1dot4_Previews: PreviewProvider {
    static var previews: some View {
        impl_Part1dot4()
    }
}

struct Arc: InsettableShape {
        
    var startAngle: Angle
    var endAngle: Angle
    var clockwise: Bool
    
    var insetAmount: Double = 0.0
    
    func path(in rect: CGRect) -> Path {
        let rotationAdjustment:Angle = Angle.degrees(90)
        let modifiedStart:Angle = startAngle - rotationAdjustment
        let modifiedEnd: Angle = endAngle - rotationAdjustment
        
        var path:Path = Path()
        path.addArc(center: CGPoint(x: rect.midX, y: rect.midY), radius: rect.width / 2 - insetAmount, startAngle: modifiedStart, endAngle: modifiedEnd, clockwise: !clockwise)
        
        
        return path
    }
    
    func inset(by amount: CGFloat) -> some InsettableShape {
        var arc = self
        arc.insetAmount += amount
        return arc
    }
    
}
