//
//  ContentView.swift
//  ParonSwiftUI
//
//  Created by Michaela Beyer on 2022-10-27.
//

import SwiftUI

struct MainView: View {
    @EnvironmentObject var dbConnection: FirebaseManager
    
    @State var email = ""
    @State var password = ""
    @State var viewList = false
    
    
    var body: some View {
        
        ZStack(alignment: .center) {
            
            
            LinearGradient(colors: [.white, Color(rgbPink)], startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea()
            
            
            
            VStack{
                
                HStack{
                    Header()
                    Spacer()
                    Button {
                        viewList.toggle()
                    } label: {
                        Image(systemName: "list.bullet")
                            .font(.system(size: 40))
                            .foregroundColor(Color(rgbDarkBrown))
                            .help("View On Map")
                        
                    }
              
                }.padding(.horizontal, 5)
                
                
                
                Spacer()
                
                MapCircle()
                    .shadow(radius: 6)
                
                
                Spacer()
                
                
                BottomMenu()
                
                
            }.padding(.horizontal, 5)
            
            if viewList {
                PlaygroundsListView(viewList: $viewList)
            }
            
            
        }
        
        
        
        
        
    }
    

    }
    
    



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
