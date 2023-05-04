//
//  sect_Part2dot2.swift
//  Drawing
//
//  Created by Seika Hirori on 5/4/23.
//

import SwiftUI

struct sect_Part2dot2: View {
    var body: some View {
        return GeometryReader { outerGeo in
            let outerGeoWidth = outerGeo.size.width
            let outerGeoHeight = outerGeo.size.height
            
            ScrollView{
                VStack {
                    
//                    // Background modifier
//                    Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//                        .frame(width: 300, height: 300)
//                        .background(Color.red)
//                        .padding()
//
//                    // Border modifier
//                    Text("hello world :3")
//                        .frame(width: 300, height: 300)
//                        .border(.red, width: 30)
//                        .padding()
//
//                    // Use image for background
//                    Text("hello world :3")
//                        .frame(width: 300, height: 300)
//                        .foregroundColor(.white)
//                        .background(
//                            GeometryReader { geo in
//                                let geoWidth = geo.size.width
//                                let geoHeight = geo.size.height
//
//                                Image("pexels-pixabay-68474")
//                                    .resizable()
//                                    .scaledToFit()
//                                    .frame(width: geoWidth * 0.8, height: geoHeight * 0.8)
//                                    .frame(width: geoWidth, height: geoHeight)
//                            }
//                        )
//                        .background(.blue)
//                        .padding()
//                        .padding()
                    
//                    // Using ImagePaint
//                    Text("Hello worldddd :3")
//                        .frame(width: 300, height: 300)
//                        .border(ImagePaint(image: Image("Sunny_green_paddy_fields_with_trees_and_long_shadows_at_golden_hour"),scale: 0.1), width: 30)
                   
                    
//                    // Using ImagePaint with sourceRect
//                    Text("Hello worldddd :3")
//                        .frame(width: 300, height: 300)
//                        .border(ImagePaint(image: Image("Sunny_green_paddy_fields_with_trees_and_long_shadows_at_golden_hour"), sourceRect: CGRect(x: 0, y: 0.25, width: 1, height: 0.5),scale: 0.1), width: 30)
                    
                    Capsule()
                        .strokeBorder(ImagePaint(image: Image("Sunny_green_paddy_fields_with_trees_and_long_shadows_at_golden_hour"), scale: 0.1), lineWidth: 20)
                        .frame(width: 300, height: 300)
                }
                .frame(width: outerGeoWidth * 0.90, height: outerGeoHeight * 0.90)
                .padding()
                

            }
        }
    }
}

struct sect_Part2dot2_Previews: PreviewProvider {
    static var previews: some View {
        sect_Part2dot2()
    }
}
