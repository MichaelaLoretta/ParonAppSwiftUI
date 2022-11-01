//
//  LoginForm.swift
//  ParonSwiftUI
//
//  Created by Michaela Beyer on 2022-10-31.
//

import SwiftUI
import Firebase

struct LoginForm: View {
    
    
    @State private var email = ""
    @State private var password = ""
    @State var loginStatusMessage = ""

    
    var body: some View {
        
        
         
            VStack(spacing: 10) {
             
             
             TextField("Email", text: $email)
                    .keyboardType(.emailAddress)
                    .autocapitalization(.none)
                 .foregroundColor(.black)
                 .textFieldStyle(.plain)
                 
                 
             
             Rectangle()
                 .frame(width: 290, height: 1)
                 .foregroundColor(.black)
                 .padding(.bottom, 25)
             
             SecureField("Password", text: $password)
                 .foregroundColor(.black)
                 .textFieldStyle(.plain)
                 
             
                 
             Rectangle()
                 .frame(width: 290, height: 1)
                 .foregroundColor(.black)
                 .padding(.bottom, 25)
                
                
                Button("Log In", action: { logIn()
                    
                })
                    .fontWeight(.bold)
                    .font(.system(size: 30, weight: .black, design: .rounded))
                    .padding(.vertical)
                    .foregroundColor(Color(rgbDarkGreen))
                
                Text("OR")
                
                
                Button("Sign Up", action: {
                    register()
                    
                })
                    .foregroundColor(Color(rgbDarkGreen))
                    .font(.system(size: 25, design: .rounded))
                    .padding(.vertical)
             
                
               //If user is logged in, show MapView, if not go to Sign Up Screen
                
                Text(self.loginStatusMessage)
                    .foregroundColor(.red)
                    .padding(.vertical, 20)
                
                
            
             
            }.padding(.horizontal, 50)
             
        
        
    }
    private func logIn() {
        print("Should log into Firebase")
        Auth.auth().signIn(withEmail: email, password: password){
            result, err in
            if let err = err {
                print("Failed to log in user", err)
                self.loginStatusMessage = "Failed to log in user: \(err)"
                return //bail
            }
            print("Successfully logged in as user : \(result?.user.uid ?? "" )")
            self.loginStatusMessage = "Successfully logged in as user: \(result?.user.uid ?? "" )"
        }
    }
    

        
    
    

    private func register() {
        Auth.auth().createUser(withEmail: email, password: password){
            result, err in
            if let err = err {
                print("Failed to create user", err)
                self.loginStatusMessage = "Failed to create user: \(err)"
                return //bail
            }
            print("Successfully created user: \(result?.user.uid ?? "" )")
            self.loginStatusMessage = "Successfully created user: \(result?.user.uid ?? "" )"
        }
    }
}




struct LoginForm_Previews: PreviewProvider {
    static var previews: some View {
        LoginForm()
    }
}
