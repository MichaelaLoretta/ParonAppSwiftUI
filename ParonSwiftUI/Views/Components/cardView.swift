//
//  cardView.swift
//  ParonSwiftUI
//
//  Created by Michaela Beyer on 2022-11-05.
//

import SwiftUI

struct CardView: View {
    
    var playground: Playground
    
    var body: some View {
        
        AsyncImage(url: URL(string: playground.imageUrl), content: {
            image in
            
            image.resizable().overlay(alignment: .bottomLeading, content: {
                VStack(alignment: .leading){
                    
                    Text(playground.title)
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                        .font(.system(size: 20))
                    
                    
                    Text(playground.district).bold()
                        .foregroundColor(.white)
                        .font(.system(size: 15))
                    
                }.padding()
            })
            
            
        }, placeholder: {
            Text("Please wait...").foregroundColor(.black)
            
        }).frame(width: 325, height: 210).cornerRadius(15)
    }
}
