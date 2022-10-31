//
//  LoginView.swift
//  ParonSwiftUI
//
//  Created by Michaela Beyer on 2022-10-27.
//

import SwiftUI

struct LoginView: View {
    
    
    
    var body: some View {
        
        ZStack(alignment: .center) {
            LinearGradient(colors: [.white, Color(rgbPink)], startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea()
            
           VStack {
               HStack{
                   Header()
                   Spacer()
                   Image(systemName: "questionmark")
                       .font(.system(size: 30))
                   
               }.padding(.horizontal, 15)
               
               Spacer()
                
               LoginForm()
               
               Spacer()
                
                
            }
            
        }}}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
