//
//  RoundedCornerBg.swift
//  ParonSwiftUI
//
//  Created by Michaela Beyer on 2022-11-01.
//

import SwiftUI

//Rounded Shape Component

struct RoundedCornerBg: View {
    var body: some View {
        VStack{
            VStack(alignment: .leading){
                HStack{Spacer() }
                
                Text("HELLO")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                
                
                Text("Welcome Back")
                    .font(.title2)
            }
            .frame(height: 260)
            .padding(.leading)
            .background(Color(.systemTeal))
            .foregroundColor(.white)
            .clipShape(RoundedShape(corners: [.bottomRight]))
            
            
                
                
                
            
        }
    }
}

struct RoundedCornerBg_Previews: PreviewProvider {
    static var previews: some View {
        RoundedCornerBg()
    }
}
