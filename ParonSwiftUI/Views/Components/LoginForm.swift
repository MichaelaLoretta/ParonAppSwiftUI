//
//  LoginForm.swift
//  ParonSwiftUI
//
//  Created by Michaela Beyer on 2022-10-31.
//

import SwiftUI

struct LoginForm: View {
    @State private var email = ""
    @State private var password = ""
    
    var body: some View {
        
        
         
            VStack(spacing: 10) {
             
             
             TextField("Email", text: $email)
                 .foregroundColor(.black)
                 .textFieldStyle(.plain)
                 
                 
             
             Rectangle()
                 .frame(width: 280, height: 1)
                 .foregroundColor(.black)
                 .padding(.bottom, 25)
             
             SecureField("Password", text: $password)
                 .foregroundColor(.black)
                 .textFieldStyle(.plain)
                 
             
                 
             Rectangle()
                 .frame(width: 280, height: 1)
                 .foregroundColor(.black)
                 .padding(.bottom, 25)
             
                
               //If user is logged in, show MapView, if not go to Sign Up Screen
                
                
             Button("Log In", action: {
                 
             })
                 .fontWeight(.bold)
                 .font(.system(size: 30, weight: .black, design: .rounded))
                 .padding(.vertical)
                 .foregroundColor(Color(rgbDarkGreen))
             
             Text("OR")
             
             
             Button("Sign Up", action: {})
                 .foregroundColor(Color(rgbDarkGreen))
                 .font(.system(size: 25, design: .rounded))
                 .padding(.vertical)
             
             
            }.padding(.horizontal, 50)
             
        
        
    }
}

struct LoginForm_Previews: PreviewProvider {
    static var previews: some View {
        LoginForm()
    }
}
