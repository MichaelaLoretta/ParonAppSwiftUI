//
//  PlaygroundsListView.swift
//  ParonSwiftUI
//
//  Created by Michaela Beyer on 2022-11-04.
//


import SwiftUI

struct DestinationListView: View {
    
    
    @EnvironmentObject var dbConnection: FirebaseManager
    @Binding var viewList: Bool
    @State var selectedPlayground : Playground?
    
    
    var body: some View {
        
        
        ZStack(alignment: .center) {
            LinearGradient(colors: [.white, Color(rgbPink)], startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea()
            
            VStack {
                HStack{
                    Header()
                    Spacer()
                    Button {
                        viewList.toggle()
                    } label: {
                        Image(systemName: "globe.europe.africa.fill")
                            .font(.system(size: 30))
                            .foregroundColor(Color(rgbDarkBrown))
                            .help("View As List")
                    }
                }.padding(.horizontal, 20)
                ScrollView {
                    VStack{
                        Text("PLAYGROUNDS")
                            .font(.custom(
                                "Spinnaker-Regular",
                                fixedSize: 30))
                            .foregroundColor(Color(rgbDarkGreen))
                            .padding(.vertical, 10)
                        
                        Spacer()
                        //Med navigationLink
                        //                        ForEach(dbConnection.playgroundsList) { playground in
                        //                            NavigationLink(destination: DestinationInfoView(playground: playground),
                        //                                           label: {CardView(playground: playground)})
                        //                            }
                        
                        //Med Overlay
                        ForEach(dbConnection.playgroundsList) { playground in
                            
                            Button {
                                selectedPlayground = playground
                            } label: {
                                CardView(playground: playground)
                            }
                            
                            
                        }
                    }.padding(.horizontal, 10)
                    
                    
                }.overlay() {
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
        
    }
}
