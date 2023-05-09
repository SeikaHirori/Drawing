//
//  sect_Part3dot4.swift
//  Drawing
//
//  Created by Seika Hirori on 5/9/23.
//

import SwiftUI

struct sect_Part3dot4: View {
    @State private var innerRadius: Double = 125.0
    @State private var outerRadius: Double = 75.0
    @State private var distance: Double = 25.0
    @State private var amount: Double = 1.0
    @State private var hue: Double = 0.6

    
    
    var body: some View {
        return VStack {
            Text("Hello, World!")
            
            Spriograph(innerRadius: Int(innerRadius), outerRadius: Int(outerRadius), distance: Int(distance), amount: amount)
        }
    }
}

struct sect_Part3dot4_Previews: PreviewProvider {
    static var previews: some View {
        sect_Part3dot4()
    }
}


struct Spriograph: Shape {
    let innerRadius: Int
    let outerRadius: Int
    let distance: Int
    let amount: Double
    
    func gcd(_ a: Int, _ b: Int) -> Int {
        var a = a
        var b = b
        
        while b != 0 {
            let temp = b
            b = a % b
            a = temp
        }
        
        return a
    }
    
    func path(in rect: CGRect) -> Path {
        
        // Part 1
        
        let divisor:Int = gcd(innerRadius, outerRadius)
        let outerRadius: Double = Double(self.outerRadius)
        let innerRadius: Double = Double(self.innerRadius)
        let distance: Double = Double(self.distance)
        let difference: Double = innerRadius - outerRadius
        let endPoint:Double = ceil(2 * Double.pi * outerRadius / Double(divisor)) * amount
        
        // Part 2
    }
    
    
}
