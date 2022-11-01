//
//  ParonSwiftUIApp.swift
//  ParonSwiftUI
//
//  Created by Michaela Beyer on 2022-10-27.
//

import SwiftUI
import Firebase

@main
struct ParonSwiftUIApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            
            
            LaunchView()
        }
    }
}

