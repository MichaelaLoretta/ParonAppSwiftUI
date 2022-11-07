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
        
        
        ZStack(alignment: .center) {
            LinearGradient(colors: [.white, Color(rgbPink)], startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea()
            
            VStack {
                HStack{
                    Header()
                    Spacer()
                    Button {
                        viewList.toggle()
                    } label: {
                        Image(systemName: "globe.europe.africa.fill")
                            .font(.system(size: 40))
                            .foregroundColor(Color(rgbDarkBrown))
                            .help("View As List")
                    }
                }.padding(.horizontal, 10)
                ScrollView {
                    VStack{
                        Text("PLAYGROUNDS")
                            .font(.custom(
                                "Spinnaker-Regular",
                                fixedSize: 30))
                            .foregroundColor(Color(rgbDarkGreen))
                            .padding(.vertical, 20)
                        
                        Spacer()
                        
                        ForEach(dbConnection.playgroundsList) { playground in
                            cardView(playground: playground)
                        }
                        
                        Spacer()
                        
                        
                    }
                }.padding(.horizontal, 5)
            }
        }
        
    }
}
        
//
//struct PlaygroundsListView_Previews: PreviewProvider {
//    static var previews: some View {
//        PlaygroundsListView().environmentObject(FirebaseManager())
//    }
//}
