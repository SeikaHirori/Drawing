//
//  sect_Part2dot3.swift
//  Drawing
//
//  Created by Seika Hirori on 5/5/23.
//

import SwiftUI

struct sect_Part2dot3: View {
    @State private var colorCycle = 0.0
    
    var body: some View {
        return VStack {
            ColorCyclingCircle(amount: colorCycle)
                .frame(width: 300, height: 300)
            
            Slider(value: $colorCycle)
                .padding()
            
                // DEBUG
                .onChange(of: colorCycle) { _ in
                    print(colorCycle.formatted())
                }
        }
    }
}

struct sect_Part2dot3_Previews: PreviewProvider {
    static var previews: some View {
        sect_Part2dot3()
    }
}

struct ColorCyclingCircle: View {
    var amount:Double = 0.0
    var steps: Int = 100
    
    var body: some View {
        ZStack {
            ForEach(0..<steps) { value in
                Circle()
                    .inset(by: Double(value))
                    .strokeBorder(color(for: value, brightness: 1), lineWidth: 2)
            }
        }
    }
    
    func color(for value: Int, brightness: Double) -> Color {
        var targetHue: Double = Double(value) / Double(steps) + amount
        
        if targetHue > 1 {
            targetHue -= 1
        }
        
        return Color(hue: targetHue, saturation: 1, brightness: brightness)
    }
}
