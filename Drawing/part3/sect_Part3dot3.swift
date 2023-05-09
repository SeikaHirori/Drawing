//
//  sect_Part3dot3.swift
//  Drawing
//
//  Created by Seika Hirori on 5/9/23.
//

import SwiftUI

struct sect_Part3dot3: View {
    @State private var rows: Int = 4
    @State private var columns: Int = 4
    
    var body: some View {

        return VStack {
            Checkboard(rows: rows, columns: columns)
                .onTapGesture {
                    withAnimation(.linear(duration: 3)) {
                        rows = 8
                        columns = 16
                    }
                }
        }
    }
}

struct sect_Part3dot3_Previews: PreviewProvider {
    static var previews: some View {
        sect_Part3dot3()
    }
}

struct Checkboard: Shape {
    var rows: Int
    var columns: Int
    
    func path(in rect: CGRect) -> Path {
        var path:Path = Path()
        
        // figure out how big each row/ column needs to be
        let rowSize: Double = rect.height / Double(rows)
        let columnSize: Double = rect.width / Double(columns)
        
        // loop over all rows and columns, making alternating squares colored
        
        
        
        
        return path
    }
    
}
