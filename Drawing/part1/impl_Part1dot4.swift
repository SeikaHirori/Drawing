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
            Circle()
//                .stroke(.blue, lineWidth: 45)
                .strokeBorder(.blue, lineWidth: 40)
        }
    }
}

struct impl_Part1dot4_Previews: PreviewProvider {
    static var previews: some View {
        impl_Part1dot4()
    }
}

struct Arc:Shape {
    var startAngle: Angle
    var endAngle: Angle
    var clockwise: Bool
    
    func path(in rect: CGRect) -> Path {
        let rotationAdjustment:Angle = Angle.degrees(90)
        let modifiedStart:Angle = startAngle - rotationAdjustment
        let modifiedEnd: Angle = endAngle - rotationAdjustment
        
        var path:Path = Path()
        path.addArc(center: CGPoint(x: rect.midX, y: rect.midY), radius: rect.width / 2, startAngle: modifiedStart, endAngle: modifiedEnd, clockwise: !clockwise)
        
    }
    
}
