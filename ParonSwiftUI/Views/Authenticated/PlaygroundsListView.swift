//
//  PlaygroundsListView.swift
//  ParonSwiftUI
//
//  Created by Michaela Beyer on 2022-11-04.
//


import SwiftUI

struct PlaygroundsListView: View {

    
    @EnvironmentObject var dbConnection: FirebaseManager
    @Binding var viewList: Bool
    
    var playground = Playground.self
    
    
    var body: some View {
        
        
        ScrollView {
            VStack{
                Text("PLAYGROUNDS")
                    .font(.custom(
                        "Spinnaker-Regular",
                        fixedSize: 30))
                    .foregroundColor(Color(rgbDarkBrown))
                    .padding(.vertical, 20)
                
                Spacer()
                
                ForEach(dbConnection.playgroundsList) { playground in
                    cardView(playground: playground)
                }
                
                Spacer()
                
                Button(action: {
                    viewList.toggle()
                }, label: {
                    Text("View on list").padding().background(.black).foregroundColor(.white).cornerRadius(9)
                })
                
                
            }
        }.background(Color(rgbLightGreen))
            .ignoresSafeArea()
        
    }
}
        
//
//struct PlaygroundsListView_Previews: PreviewProvider {
//    static var previews: some View {
//        PlaygroundsListView().environmentObject(FirebaseManager())
//    }
//}
