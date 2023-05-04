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
        }
        
        
    }
}

struct sect_Part2dot2_Previews: PreviewProvider {
    static var previews: some View {
        sect_Part2dot2()
    }
}
