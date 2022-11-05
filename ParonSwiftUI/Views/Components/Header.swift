//
//  Header.swift
//  ParonSwiftUI
//
//  Created by Michaela Beyer on 2022-10-29.
//

import SwiftUI

struct Header: View {
    
    @EnvironmentObject var dbConnection: FirebaseManager
    
    var body: some View {
        
        HStack{
            //-----LOGO----
            Text("PÄRON")
                .font(.custom(
                    "Spinnaker-Regular",
                    fixedSize: 42))
                .foregroundColor(Color(rgbDarkGreen));
            
            Spacer()
        
            
            //----HAMBURGER MENU----
            
//            VStack{
//                Rectangle()
//                    .frame(width: 30,height: 2)
//                    .foregroundColor(Color(rgbDarkBrown))
//                Rectangle()
//                    .frame(width: 30,height: 2)
//                    .foregroundColor(Color(rgbDarkBrown))
//                Rectangle()
//                    .frame(width: 30,height: 2)
//                    .foregroundColor(Color(rgbDarkBrown))
//            }
//
        }
        
    }
}

struct Header_Previews: PreviewProvider {
    static var previews: some View {
        Header()
    }
}
