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
            Blur_and_Saturation_v1()
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

/// Uses SwiftUI's adaptive interpretation of RGB
/// Example code: https://www.hackingwithswift.com/books/ios-swiftui/special-effects-in-swiftui-blurs-blending-and-more#:~:text=As%20an%20example%2C%20we%20could%20render%20three%20circles%20at%20various%20positions%20inside%20a%20ZStack%2C%20then%20use%20a%20slider%20to%20control%20their%20size%20and%20overlap%3A
struct BrighterStuff_v1: View {
    @State private var amount:Double = 0.00 // Setting this default value to see if Circle exists in view for debug
    
    var body: some View {
        return VStack {
            ZStack {
                Circle()
                    .fill(Color(red: 1, green: 0, blue: 0))
                    .frame(width: 200 * amount)
                    .offset(x: -50, y: -80)
                    .blendMode(.screen)

                Circle()
                    .fill(Color(red: 0, green: 1, blue: 0))
                    .frame(width: 200 * amount)
                    .offset(x: 50, y: -80)
                    .blendMode(.screen)
                
                Circle()
                    .fill(Color(red: 0, green: 0, blue: 1))
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


/// Uses pure color of RGB
/// Example code: https://www.hackingwithswift.com/books/ios-swiftui/special-effects-in-swiftui-blurs-blending-and-more#:~:text=If%20you%20want%20to%20see%20the%20full%20effect%20of%20blending%20red%2C%20green%2C%20and%20blue%2C%20you%20should%20use%20custom%20colors%20like%20these%20three%3A
struct BrighterStuff_v2: View {
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

struct Blur_and_Saturation_v1:View {
    @State private var amount: Double = 0
    
    var body: some View {
        return VStack {
            Image("pexels-pixabay-68474")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
                .saturation(amount)
                .blur(radius: (1 - amount) * 20)
                
            Slider(value: $amount)
                .padding()
        }
    }
    
}
