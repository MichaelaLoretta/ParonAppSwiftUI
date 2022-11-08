//
//  cardView.swift
//  ParonSwiftUI
//
//  Created by Michaela Beyer on 2022-11-05.
//

import SwiftUI

struct CardView: View {
    
    var playground = Playground(id: "1", title: "Fruktparken", description: "Bra park", district: "Liljeholmen", imageUrl: "https://parker.stockholm/optimized/serviceunitspage/filer/hitta/e405ecce-c15e-46e8-baa2-5e4ecf66d72e.jpeg", web: "https://parker.stockholm/hitta-lekplatser-parklekar-plaskdammar/lekplats/fruktlekparken/", latitude: 59.311124985599996, longitude: 18.0222610271878)
    
    var body: some View {
        
        AsyncImage(url: URL(string: playground.imageUrl), content: {
                image in
            
                image.resizable().overlay(alignment: .bottomLeading, content: {
                    VStack (alignment: .leading) {
                        Text(playground.title).bold().font(.custom(
                            "Spinnaker-Regular",
                            fixedSize: 27)).foregroundColor(.white)
                        Text(playground.district).font(.custom(
                            "Spinnaker-Regular",
                            fixedSize: 20)).foregroundColor(.white)
                    }.padding()
                })
                        
                
            }, placeholder: {
                Text("Please wait...").foregroundColor(.black)
                
            }).frame(width: 325, height: 210).cornerRadius(15)
    }
}
