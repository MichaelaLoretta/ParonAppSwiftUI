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
            
           
            
           MapView(playground: Playground(id: "2", title: "Fruktparken", description: "bajskorv bajskorv bajskorv", district: "Liljeholmen", imageUrl: "https://parker.stockholm/optimized/serviceunitspage/filer/hitta/e405ecce-c15e-46e8-baa2-5e4ecf66d72e.jpeg", web: "https://parker.stockholm/hitta-lekplatser-parklekar-plaskdammar/lekplats/fruktlekparken/", latitude: 59.31112498559, longitude: 18.0222610271878)).environmentObject(FirebaseManager())
                .clipShape(Circle())
          
            

                
        }
    }

//
//struct MapCircle_Previews: PreviewProvider {
//    static var previews: some View {
//        MapCircle()
//    }
//}
