//
//  ContentView.swift
//  ParonSwiftUI
//
//  Created by Michaela Beyer on 2022-10-27.
//

import SwiftUI

struct MapView: View {
    
    
    var body: some View {
        
        ZStack(alignment: .center) {
            
            //-----------BACKGROUND----------
            
            LinearGradient(colors: [.black, Color(rgbPink)], startPoint: .topLeading, endPoint: .bottomTrailing)
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
                

                    
                
            }
                
            
            
        }
        
        
        
        
      
    }
    
    
    
   
    
}

    

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
