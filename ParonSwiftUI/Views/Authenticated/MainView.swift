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
                        dbConnection.SignOut()
                    } label: {
                        Image(systemName: "cross")
                            .font(.system(size: 30))
                    }

                    
                    
                }.padding(.horizontal, 15)
                
                
                
                Spacer()
                
                MapCircle()
                
                
                Spacer()
                
                
                BottomMenu()
                
                
                Button(action: {
                    viewList.toggle()
                }, label: {
                    Text("VIEW LIST").padding()
                        .background(Color(rgbDarkGreen)).foregroundColor(.white).cornerRadius(9)
                })
                
                
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
