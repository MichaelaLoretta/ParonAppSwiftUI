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
        ZStack{
            VStack{
                Text("HEJ")
            }
        }
    }
}

//struct DestinationInfoView_Previews: PreviewProvider {
//    static var previews: some View {
//        DestinationInfoView( playground: Playground(id: "2", title: "Fruktparken", description: "bajskorv bajskorv bajskorv", district: "Liljeholmen", imageUrl: "https://parker.stockholm/optimized/serviceunitspage/filer/hitta/e405ecce-c15e-46e8-baa2-5e4ecf66d72e.jpeg", web: "https://parker.stockholm/hitta-lekplatser-parklekar-plaskdammar/lekplats/fruktlekparken/", latitude: 59.31112498559, longitude: 18.0222610271878)).environmentObject(FirebaseManager())
//    }
//}

