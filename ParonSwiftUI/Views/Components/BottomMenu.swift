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
        .padding(.bottom, 10)
        
    }
}

struct BottomMenu_Previews: PreviewProvider {
    static var previews: some View {
        BottomMenu()
    }
}
