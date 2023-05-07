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

/// Example code: https://www.hackingwithswift.com/books/ios-swiftui/special-effects-in-swiftui-blurs-blending-and-more#:~:text=As%20an%20example%2C%20we%20could%20render%20three%20circles%20at%20various%20positions%20inside%20a%20ZStack%2C%20then%20use%20a%20slider%20to%20control%20their%20size%20and%20overlap%3A
struct BrighterStuff_v1: View {
    @State private var amount:Double = 0.00 // Setting this default value to see if Circle exists in view for debug
    
    var body: some View {
        return VStack {
            ZStack {
                Circle()
                    .fill(.red)
                    .frame(width: 200 * amount)
                    .offset(x: -50, y: -80)
                    .blendMode(.screen)

                Circle()
                    .fill(.green)
                    .frame(width: 200 * amount)
                    .offset(x: 50, y: -80)
                    .blendMode(.screen)
                
                Circle()
                    .fill(.blue)
                    .frame(width: 200 * amount)
                    .blendMode(.screen)
                
            }
            .frame(width: 300, height: 300)
            
            Slider(value: $amount)
                .padding()
                .onChange(of: amount) { _ in
                    print("Slider amount: \(amount)")
                } // Debug
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.black)
        .ignoresSafeArea()
            
    }
}
