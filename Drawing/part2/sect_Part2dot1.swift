//
//  sect_Part2dot1.swift
//  Drawing
//
//  Created by Seika Hirori on 5/2/23.
//

import SwiftUI

struct sect_Part2dot1: View {
    var body: some View {
        return VStack {
            Flower()
        }
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
        <#code#>
    }
}
