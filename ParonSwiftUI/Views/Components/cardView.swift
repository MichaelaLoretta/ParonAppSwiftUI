//
//  cardView.swift
//  ParonSwiftUI
//
//  Created by Michaela Beyer on 2022-11-05.
//

import SwiftUI

struct cardView: View {
    
    var playground = Playground(id: "1", title: "Fruktparken", description: "Bra park", district: "Liljeholmen", imageUrl: "https://parker.stockholm/optimized/serviceunitspage/filer/hitta/e405ecce-c15e-46e8-baa2-5e4ecf66d72e.jpeg", web: "https://parker.stockholm/hitta-lekplatser-parklekar-plaskdammar/lekplats/fruktlekparken/", latitude: 59.311124985599996, longitude: 18.0222610271878)
    
    var body: some View {
        
        AsyncImage(url: URL(string: playground.imageUrl), content: {
                image in
            
                image.resizable().overlay(alignment: .bottomLeading, content: {
                    VStack (alignment: .leading) {
                        Text(playground.title).bold().font(.title).foregroundColor(.white)
                        Text(playground.district).font(.title).foregroundColor(.white)
                    }.padding()
                })
                        
                
            }, placeholder: {
                Text("Loading...").foregroundColor(.white)
                
            }).frame(width: 325, height: 210).cornerRadius(15)
    }
}

struct cardView_Previews: PreviewProvider {
    static var previews: some View {
        cardView(playground: Playground(id: "1", title: "FruktParken", description: "Bra park", district: "Liljeholmen", imageUrl: "https://parker.stockholm/optimized/serviceunitspage/filer/hitta/e405ecce-c15e-46e8-baa2-5e4ecf66d72e.jpeg", web: "https://parker.stockholm/hitta-lekplatser-parklekar-plaskdammar/lekplats/fruktlekparken/", latitude: 59.311124985599996, longitude: 18.0222610271878))
    }
}
