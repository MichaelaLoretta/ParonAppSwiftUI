//
//  DestinationInfoView.swift
//  ParonSwiftUI
//
//  Created by Michaela Beyer on 2022-11-08.
//

import SwiftUI

struct DestinationInfoView: View {
    
    
    
    @EnvironmentObject var dbConnection: FirebaseManager
    
    var playground : Playground
    
    var body: some View {
        
        VStack(spacing: 5){
            
            AsyncImage(url: URL(string: playground.imageUrl), content: {
                image in
                
                image.resizable().overlay(alignment: .bottomLeading, content: {
                    VStack (alignment: .leading) {
                        Text(playground.title).font(.custom(
                            "Spinnaker-Regular",
                            fixedSize: 22)).foregroundColor(.white)
                    }.padding()
                })
                
            }, placeholder: {
                Text("Please wait...").foregroundColor(.black)
                
            }).frame(width: 325, height: 210).cornerRadius(15)
            
            Text(playground.district)
            Text(playground.description)
                .padding(.bottom, 10)
            Link("More info at the Official Website", destination: URL(string: playground.web)!)
            
        }.padding(15)
        
    }
}



