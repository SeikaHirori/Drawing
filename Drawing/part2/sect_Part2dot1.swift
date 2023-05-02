//
//  sect_Part2dot1.swift
//  Drawing
//
//  Created by Seika Hirori on 5/2/23.
//

import SwiftUI

struct sect_Part2dot1: View {
    @State private var petalOffset:Double = -20.0
    @State private var petalWidth: Double = 100.0
    
    
    var body: some View {
        return VStack {
//            Flower(petalOffset: petalOffset, petalWidth: petalWidth)
//                .stroke(.red, lineWidth: 1)
//
            
            Flower(petalOffset: petalOffset, petalWidth: petalWidth)
                .fill(.red, style: FillStyle(eoFill: true))

            HStack {
                Text("Offset")
                
                // Debug
                Text("|")
                Text(petalOffset.formatted())
            }
            Slider(value: $petalOffset, in: -40...40)
                .padding([.horizontal, .bottom])
//            // Debug
//            .onChange(of: petalOffset) { _ in
//                print("Petal Offset: \(petalOffset)")
//            }
            
            HStack {
                Text("Width")

                // Debug
                Text("|")
                Text(petalWidth.formatted())
            }
            Slider(value: $petalWidth, in: 0...100)
                .padding(.horizontal)
                
//                // Debug
//                .onChange(of: petalWidth) { _ in
//                    print("Petal Width: \(petalWidth)")
//                }
            
            Button(action: resetToDefault) {
                Text("Reset")
            }
            .padding()
            
            
        }
    }
    
    func resetToDefault() -> Void {
        petalOffset = -20.0
        petalWidth = 100.0
    }
    
}

struct sect_Part2dot1_Previews: PreviewProvider {
    static var previews: some View {
        sect_Part2dot1()
    }
}

struct Flower: Shape {

    
    // How much to move this petal away from the center
    var petalOffset: Double = -20
    
    // How wide to make each petal
    var petalWidth: Double = 100
    
    
    func path(in rect: CGRect) -> Path {
        
        // The path that will hold all petals
        var path = Path()
        
        // Count from 0 up to pi * 2, moving up pi / 8 each time
        for number in stride(from: 0, to: Double.pi * 2, by: Double.pi / 8) {
            
            // rotate the petal by the current value of our loop
            let rotation: CGAffineTransform = CGAffineTransform(rotationAngle: number)
            
            // move the petal to be the center of our view
            let position = rotation.concatenating(CGAffineTransform(translationX: rect.width / 2, y: rect.height / 2))
            
            // create a path for this petal using our properties plus a fixed Y and height
            let originalPetal = Path(ellipseIn: CGRect(x: petalOffset, y: 0, width: petalWidth, height: rect.width / 2))
            
            // apply our rotation/ position transformation to the petal
            let rotatedPetal = originalPetal.applying(position)
            
            path.addPath(rotatedPetal)
        }
        
        // now send the main path back
        return path
    }
}
