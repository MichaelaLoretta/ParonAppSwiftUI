//
//  BottomMenu.swift
//  ParonSwiftUI
//
//  Created by Michaela Beyer on 2022-10-29.
//

import SwiftUI


struct BottomMenu: View {
    var body: some View {
        
        HStack(spacing: 50){
            
            
            
            Image(systemName: "figure.play")
                .font(.system(size: 50))
            
            
            
            
            
            Image(systemName: "mouth")
                .font(.system(size: 50))
            
            
            
            
            Image(systemName: "toilet")
                .font(.system(size: 50))
            
        }
        HStack(spacing: 50){
            
            Text("PLAY")
                .font(.custom(
                    "Spinnaker-Regular",
                    fixedSize: 18))
                .foregroundColor(Color(rgbDarkBrown))
                .padding(.leading, 23)
            
            
            Text("FEED")
                .font(.custom(
                    "Spinnaker-Regular",
                    fixedSize: 18))
                .foregroundColor(Color(rgbDarkBrown))
                .padding(.leading, 25)
            
            Text("DIAPER")
                .font(.custom(
                    "Spinnaker-Regular",
                    fixedSize: 18))
                .foregroundColor(Color(rgbDarkBrown))
            
            
        }.padding(.horizontal, 20)
            .padding(.bottom, 10)
        
    }
    
    
}


struct BottomMenu_Previews: PreviewProvider {
    static var previews: some View {
        BottomMenu()
    }
}
