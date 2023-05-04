//
//  sect_Part2dot2.swift
//  Drawing
//
//  Created by Seika Hirori on 5/4/23.
//

import SwiftUI

struct sect_Part2dot2: View {
    var body: some View {
        
        return VStack {
            
            // Background modifier
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .frame(width: 300, height: 300)
                .background(Color.red)
                .padding()
            
            // Border modifier
            Text("hello world :3")
                .frame(width: 300, height: 300)
                .border(.red, width: 30)
                .padding()
            
            // Use image for background
            Text("hello world :3")
                .frame(width: 300, height: 300)
                .foregroundColor(.white)
                .background(
                    GeometryReader { geo in
                        let geoWidth = geo.size.width
                        let geoHeight = geo.size.height
                        
                        Image("pexels-pixabay-68474")
                            .resizable()
                            .scaledToFit()
                            .frame(width: geoWidth * 0.8, height: geoHeight * 0.8)
                            .frame(width: geoWidth, height: geoHeight)
                    }
                )
                .background(.blue)
                .padding()

        }
        .padding()
    }
}

struct sect_Part2dot2_Previews: PreviewProvider {
    static var previews: some View {
        sect_Part2dot2()
    }
}
