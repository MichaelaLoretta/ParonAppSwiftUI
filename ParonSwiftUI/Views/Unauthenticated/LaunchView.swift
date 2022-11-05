//
//  LaunchView.swift
//  ParonSwiftUI
//
//  Created by Michaela Beyer on 2022-10-30.
//

import SwiftUI

struct LaunchView: View {
    
    @State var isActive = true
    @State var size = 2.0
    @State var opacity = 0.3
    
    var body: some View {
        
        if !isActive {
            
            NavigationView {
                LoginView()
            }
            
        } else {
            VStack {
                ZStack {
                    LinearGradient(colors: [.white, Color(rgbPink)], startPoint: .topLeading, endPoint: .bottomTrailing)
                        .ignoresSafeArea()
                    
                    
                    
                    Image("paronNoBg")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100)
                         .scaleEffect(size)
                         .opacity(opacity)
                          .onAppear{
                              withAnimation(.easeIn(duration: 2.5)) {
                                  self.size = 17.0
                                  self.opacity = 1.0
                                                }
                }.edgesIgnoringSafeArea(.all)
                
                
                
                
                
                
                Text("PÄRON")
                    .font(.custom(
                        "Spinnaker-Regular",
                        fixedSize: 50))
                    .foregroundColor(Color(rgbPink))
            }
            }.onAppear{
                DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) {
                    self.isActive = false
            
        
        }
        
        
            }
        }

    }

}
    
    struct LaunchView_Previews: PreviewProvider {
        static var previews: some View {
            LaunchView()
        }
    }

