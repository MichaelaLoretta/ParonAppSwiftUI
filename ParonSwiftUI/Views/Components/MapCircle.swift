//
//  MapCircle.swift
//  ParonSwiftUI
//
//  Created by Michaela Beyer on 2022-10-29.
//

import SwiftUI

struct MapCircle: View {
    
 
    
    var body: some View {
        Circle()
            .stroke(lineWidth: 5)
            .frame(width: 370)
            .foregroundColor(Color(rgbPink))
            
    }
}

struct MapCircle_Previews: PreviewProvider {
    static var previews: some View {
        MapCircle()
    }
}
