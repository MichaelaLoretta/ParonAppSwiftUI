//
//  MapCircle.swift
//  ParonSwiftUI
//
//  Created by Michaela Beyer on 2022-10-29.
//

import SwiftUI
import MapKit



struct MapCircle: View {
    @EnvironmentObject var dbConnection: FirebaseManager

        
        var body: some View {
            
           
            
            MapView()
                .clipShape(Circle())
          
            

                
        }
    }
