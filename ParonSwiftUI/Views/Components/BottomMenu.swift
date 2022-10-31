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
            Circle()
                .stroke(lineWidth: 2)
                .frame(width: 70)
                .foregroundColor(Color(rgbDarkGreen))
            
            
            Circle()
                .stroke(lineWidth: 2)
                .frame(width: 70)
                .foregroundColor(Color(rgbDarkGreen))
            
            
            Circle()
                .stroke(lineWidth: 2)
                .frame(width: 70)
                .foregroundColor(Color(rgbDarkGreen))
            
        }
        .padding(.bottom, 10)
        
    }
}

struct BottomMenu_Previews: PreviewProvider {
    static var previews: some View {
        BottomMenu()
    }
}