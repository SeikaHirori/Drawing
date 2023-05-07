//
//  sect_Part3dot1.swift
//  Drawing
//
//  Created by Seika Hirori on 5/7/23.
//

import SwiftUI

struct sect_Part3dot1: View {
    var body: some View {
        return ZStack {
            
            Image("pexels-pixabay-68474")
                .resizable()
                .scaledToFit()
            
            Rectangle()
                .fill(.red)
                .blendMode(.multiply)
                .scaledToFit() // Personal additional
        }
        .frame(width: 400, height: 500)
        .clipped()
        
        
    }
}

struct sect_Part3dot1_Previews: PreviewProvider {
    static var previews: some View {
        sect_Part3dot1()
    }
}
