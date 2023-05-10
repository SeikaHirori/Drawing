//
//  ArrowView.swift
//  Drawing
//
//  Created by Seika Hirori on 5/10/23.
//

import SwiftUI

struct ArrowView: View {
    @State private var insetAmount:Double = 50.0
    
    var body: some View {
        return VStack {
            Spacer()
            Group {
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                Text("ArrowView :3")
            }
            Spacer()
            
            ArrowTriangle(insetAmount: insetAmount)
        }
    }
}

struct ArrowView_Previews: PreviewProvider {
    static var previews: some View {
        ArrowView()
    }
}

struct ArrowTriangle: Shape {
    var insetAmount: Double
    
    var animatableData: Double {
        get { insetAmount }
        set { insetAmount = newValue }
    }
    
    func path(in rect: CGRect) -> Path {
        var path: Path = Path()
        
        
//        path.move(to: CGPoint(x: 0, y: rect.maxY))
        
        path.move(to: CGPoint(x: rect.width / 2, y: rect.minY))
        
        path.addLine(to: CGPoint(x: insetAmount, y: rect.midY / 2))
        path.addLine(to: CGPoint(x: rect.width - insetAmount, y: rect.midY / 2))
        path.addLine(to: CGPoint(x: rect.width / 2, y: rect.minY))

        
        
        
        return path
    }
}
