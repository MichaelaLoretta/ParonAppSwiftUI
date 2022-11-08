//
//  MapView2.swift
//  ParonSwiftUI
//
//  Created by Michaela Beyer on 2022-11-07.
//

import SwiftUI
import MapKit


struct MapView2: View {
    
    @State var manager = LocationManager()
    
    
    var lekparker = [Playground(id: "1", title: "observatorielunden", description: "bajspark", district: "vasastan", imageUrl: "https://parker.stockholm/optimized/serviceunitspage/filer/hitta/e405ecce-c15e-46e8-baa2-5e4ecf66d72e.jpeg", web: "https://parker.stockholm/hitta-lekplatser-parklekar-plaskdammar/lekplats/fruktlekparken/", latitude: 59.311124985599996, longitude: 18.0222610271878), Playground(id: "2", title: "Fruktparken", description: "hej kom å hjälp mej", district: "Liljeholmen", imageUrl: "https://parker.stockholm/optimized/serviceunitspage/filer/hitta/51c9c123-014e-4f6d-92e7-909df3e56cff.png", web: "https://parker.stockholm/hitta-lekplatser-parklekar-plaskdammar/parklek/parkleken-stora-blecktornsparken/", latitude: 59.30722104010637, longitude: 18.08734768224029)]
    
    
    
    var body: some View {
        
        
        Map(coordinateRegion: $manager.region, interactionModes: [.all], showsUserLocation: true, userTrackingMode: .constant(.follow), annotationItems: lekparker) {
            lekpark in
            
            MapAnnotation(coordinate: CLLocationCoordinate2D(latitude: lekpark.latitude, longitude: lekpark.longitude), content: {
                ZStack(alignment: .center){
                    Circle()
                        .strokeBorder(.black, lineWidth: 1)
                        .background(Circle().fill(Color(rgbDarkGreen)))
                        .foregroundColor(.black)
                        .frame(width: 30)
                    Image(systemName: "figure.play")
                    
                }
            })
        }
    }
}

struct MapView2_Previews: PreviewProvider {
    static var previews: some View {
        MapView2()
    }
}
