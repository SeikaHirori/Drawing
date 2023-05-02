//
//  impl_Part1dot4.swift
//  Drawing
//
//  Created by Seika Hirori on 5/2/23.
//

import SwiftUI

struct impl_Part1dot4: View {
    var body: some View {
        return VStack {
            Circle()
//                .stroke(.blue, lineWidth: 45)
                .strokeBorder(.blue, lineWidth: 40)
        }
    }
}

struct impl_Part1dot4_Previews: PreviewProvider {
    static var previews: some View {
        impl_Part1dot4()
    }
}
