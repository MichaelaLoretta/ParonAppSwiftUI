//
//  ContentView.swift
//  ParonSwiftUI
//
//  Created by Michaela Beyer on 2022-10-27.
//

import SwiftUI
import MapKit

struct MapView: View {
    
    @EnvironmentObject var dbConnection: FirebaseManager
    
    @State var viewList = false
    @State var manager = LocationManager()
    @State var selectedPlayground : Playground?
    
    var body: some View {
        
        ZStack(alignment: .center) {
            
            //Gradient Bakgrund
            
            LinearGradient(colors: [.white, Color(rgbPink)], startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea()
            
            
            
            VStack{
                
                
                
                HStack{
                    //Header med logo och knapp för att toggla mellan list och kartvy
                    
                    Header()
                    Spacer()
                    
                    Button {
                        viewList.toggle()
                    } label: {
                        Image(systemName: "list.bullet")
                            .font(.system(size: 30))
                            .foregroundColor(Color(rgbDarkBrown))
                            .help("View On Map")
                        
                    }
                    
                    
                }.padding(.horizontal, 20)
                
                
                
                Spacer()
                
                ZStack{
                    
                    //Karta med markers för varje lekpark på servern
                    
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
                    }
                }
                .clipShape(Circle())
                .shadow(radius: 6)
                .overlay(alignment: .bottom) {
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
                
                
                Spacer()
                
                VStack{
                    
                    
                    BottomMenu()
                }
                
                
            }.padding(.horizontal, 10)
            
            if viewList {
                PlaygroundsListView(viewList: $viewList)
            }
        }
        
        
    }
    
}
    
    
