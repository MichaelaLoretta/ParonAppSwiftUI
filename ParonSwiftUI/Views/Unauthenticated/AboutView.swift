//
//  AboutView.swift
//  ParonSwiftUI
//
//  Created by Michaela Beyer on 2022-11-10.
//

import SwiftUI

struct AboutView: View {
    
    @Binding var gotQuestions: Bool
    
    var body: some View {
        ZStack(alignment: .center) {
            LinearGradient(colors: [.white, Color(rgbPink)], startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea()
            
        
        VStack(spacing: 24){
            Text("Got Questions?").font(.title)
            
            Text("PÄRON APP")
                .font(.custom(
                    "Spinnaker-Regular",
                    fixedSize: 27))
                .foregroundColor(Color(rgbDarkGreen))
            
            Text("Is a handy map for parents of babys and toddlers, that can help find nearby playgrounds, feeding stations or changing tables.")
        }.padding(27)
                .overlay(
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(Color(rgbDarkGreen), lineWidth: 5)
                        .padding(5)
                )
            
        }.onTapGesture {
            gotQuestions.toggle()
            
        }
    }
    }

