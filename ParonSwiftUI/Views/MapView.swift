//
//  ContentView.swift
//  ParonSwiftUI
//
//  Created by Michaela Beyer on 2022-10-27.
//

import SwiftUI

struct MapView: View {
    
    
    var body: some View {
        
        NavigationView {
            ZStack(alignment: .center) {
                
                
                LinearGradient(colors: [.white, Color(rgbPink)], startPoint: .topLeading, endPoint: .bottomTrailing)
                    .ignoresSafeArea()
                
              
                
                VStack{
                    
                    HStack{
                        Header()
                        Spacer()
                        Image(systemName: "heart")
                            .font(.system(size: 30))
                        
                    }.padding(.horizontal, 15)
                   

                   
                    Spacer()
                    
                    MapCircle()
                    
                    
                    Spacer()
                    
                    
                    BottomMenu()
                    

                        
                    
                }.padding(.horizontal, 5)
                    
                
                
            }
        }.navigationViewStyle(StackNavigationViewStyle())
        
        
        
        
      
    }
    
    
    
   
    
}

    

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
