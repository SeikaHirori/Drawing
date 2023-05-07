//
//  sect_Part3dot1.swift
//  Drawing
//
//  Created by Seika Hirori on 5/7/23.
//

import SwiftUI

struct sect_Part3dot1: View {
    var body: some View {
        return VStack {
            BrighterStuff_v1()
        }
    }
}

struct sect_Part3dot1_Previews: PreviewProvider {
    static var previews: some View {
        sect_Part3dot1()
    }
}

struct RedRectangle_v1_image_modified: View {
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

struct RedRectangle_v2_shortCut: View {
    var body: some View {
        return VStack {
            Image("pexels-pixabay-68474")
                .resizable()
                .scaledToFit()
                .colorMultiply(.red)
            
        }
    }
}

struct BrighterStuff_v1: View {
    var body: some View {
        return VStack {
            ZStack {
                Text("hello world")
            }
            .frame(width: 300, height: 300)
        }
    }
}
