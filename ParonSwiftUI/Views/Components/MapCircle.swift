//
//  MapCircle.swift
//  ParonSwiftUI
//
//  Created by Michaela Beyer on 2022-10-29.
//

import SwiftUI
import MapKit

struct MapCircle: View {

        
        var body: some View {
            
            
           MapView2()
                .body.clipShape(Circle())
            

                
        }
    }


struct MapCircle_Previews: PreviewProvider {
    static var previews: some View {
        MapCircle()
    }
}
