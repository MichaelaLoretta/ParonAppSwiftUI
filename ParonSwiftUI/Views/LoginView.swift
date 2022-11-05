//
//  LoginView.swift
//  ParonSwiftUI
//
//  Created by Michaela Beyer on 2022-10-27.
//

import SwiftUI
import Firebase

struct LoginView: View {
    
    @EnvironmentObject var dbConnection: FirebaseManager
    
    @State var email = ""
    @State var password = ""


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
                        Text("WELCOME IN!")
                            .fontWeight(.bold)
                            .font(.system(size: 25, weight: .black, design: .rounded))
                            .padding(.vertical)
                            .foregroundColor(Color(rgbDarkGreen))
                        Spacer()
                        
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
                        
                            
                            Button {
                                dbConnection.loginUser(email: email, password: password)
                            } label: {
                                Text("Sign In")
                                    .fontWeight(.bold)
                                    .font(.system(size: 30, weight: .black, design: .rounded))
                                    .padding(.vertical)
                                    .foregroundColor(Color(rgbDarkGreen))
                            }

                            
                            
                                Text("OR")
                                
                                
                                Button("Sign Up", action: {
                                    dbConnection.registerUser(email: email, password: password)
                                    
                                })
                                    .foregroundColor(Color(rgbDarkGreen))
                                    .font(.system(size: 25, design: .rounded))
                                    .padding(.vertical)
                             
                             
                            Text(dbConnection.loginStatusMessage)
                                    .foregroundColor(.red)
                                    .padding(.vertical, 20)
                                
                                
                            
                             
                        }.padding(.horizontal, 50)
                         
                        
                        
                        Spacer()
                        
                     
                        
                        
                    }
                    
            
            }
        }
        
    }
   
    
    
    






struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
        
    }
}
