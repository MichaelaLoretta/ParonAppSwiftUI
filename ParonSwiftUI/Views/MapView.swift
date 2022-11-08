//
//  MapView2.swift
//  ParonSwiftUI
//
//  Created by Michaela Beyer on 2022-11-07.
//

import SwiftUI
import MapKit


struct MapView: View {
    
    @EnvironmentObject var dbConnection: FirebaseManager
    
    @State var manager = LocationManager()
    
    var playground : Playground
    
    var body: some View {
        
        //Tog bort userTrackingMode: .constant(.follow), då den zoomade in på usern och då syntes ej mina markers, i en färdig app skulle jag förstås ha trackingmode på follow då det skulle finnas många fler destinations, och då flera i närheten av user.
        
        Map(coordinateRegion: $manager.region, interactionModes: [.all], showsUserLocation: true, annotationItems: dbConnection.playgroundsList) {
            playground in
            
            MapAnnotation(coordinate: CLLocationCoordinate2D(latitude: playground.latitude, longitude: playground.longitude), content: {
                ZStack(alignment: .center){
                    
                    Circle()
                        .strokeBorder(.black, lineWidth: 1)
                        .background(Circle().fill(Color(rgbDarkGreen)))
                        .foregroundColor(.black)
                        .frame(width: 30)
                    
                    Image(systemName: "figure.play")
                }
                Text(playground.title)
                
                
            })
        }
    }
}

//struct MapView_Previews: PreviewProvider {
//    static var previews: some View {
//        MapView( playground: Playground(id: "2", title: "Fruktparken", description: "bajskorv bajskorv bajskorv", district: "Liljeholmen", imageUrl: "https://parker.stockholm/optimized/serviceunitspage/filer/hitta/e405ecce-c15e-46e8-baa2-5e4ecf66d72e.jpeg", web: "https://parker.stockholm/hitta-lekplatser-parklekar-plaskdammar/lekplats/fruktlekparken/", latitude: 59.31112498559, longitude: 18.0222610271878)).environmentObject(FirebaseManager())
//    }
//    }


