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
    @State var selectedPlayground : Playground?
    
    
    var body: some View {
        
        //Tog bort userTrackingMode: .constant(.follow), då den zoomade in på usern och då syntes ej mina markers, i en färdig app skulle jag förstås ha trackingmode på follow då det skulle finnas många fler destinations, och då flera i närheten av user.
        
        Map(coordinateRegion: $manager.region, interactionModes: [.all], showsUserLocation: true, annotationItems: dbConnection.playgroundsList) {
            playground in
            
            MapAnnotation(coordinate: CLLocationCoordinate2D(latitude: playground.latitude, longitude: playground.longitude), content: {
                Button {
                   selectedPlayground = playground
                } label: {
                    ZStack(alignment: .center){
                        
                        Circle()
                            .strokeBorder(.black, lineWidth: 1)
                            .background(Circle().fill(Color(rgbDarkGreen)))
                            .frame(width: 30)
                        
                        Image(systemName: "figure.play")
                            .foregroundColor(.black)
                    }
                }
                
                
                
            })
        }.overlay(alignment: .bottom) {
            if let selectedPlayground = selectedPlayground {
                
                ZStack{
                    
                    LinearGradient(colors: [.white, Color(rgbPink)], startPoint: .topLeading, endPoint: .bottomTrailing)
                        .ignoresSafeArea()
                    
                    VStack{
                        
                        DestinationInfoView(playground: selectedPlayground)
                        
                    }
                }
                
            }
        }.onTapGesture { //stänger overlay och återgår till kartan
            selectedPlayground = nil
        }
        }
    }




