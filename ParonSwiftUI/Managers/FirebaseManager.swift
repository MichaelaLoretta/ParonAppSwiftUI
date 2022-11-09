//
//  FirebaseManager.swift
//  ParonSwiftUI
//
//  Created by Michaela Beyer on 2022-11-02.
//

import Firebase
import FirebaseFirestoreSwift
import FirebaseFirestore

class FirebaseManager: ObservableObject {
    
    private var db = Firestore.firestore()
    
    @Published var playgroundsList = [Playground]()
    @Published var userLoggedIn = false
    @Published var currentUser: User?
    @Published var loginStatusMessage = ""
  
    
    private var playgroundsListener: ListenerRegistration?
    
    init() {
        
        Auth.auth().addStateDidChangeListener {
            auth, user in
            
            if let user = user {
                
                self.userLoggedIn = true
                self.currentUser = user
                self.startListeningToPlaygrounds()
                // Om user inte är nil, så betyder det att vi nu har loggat in.
            } else {
                self.userLoggedIn = false
                self.currentUser = nil
                self.stopListeningToPlaygrounds()
                // Om user är nil, så betyder det att vi nu har loggat ut.
            }
        }
    }
    
    func stopListeningToPlaygrounds() {
        if let playgroundsListener = playgroundsListener {
            playgroundsListener.remove()
        }
        
        playgroundsListener = nil
    }
    
    
    func startListeningToPlaygrounds() {
        
        playgroundsListener = db.collection("playgrounds").addSnapshotListener {
            snapshot, error in
            
            if let error = error {
                print("Error fetching playgrounds, \(error.localizedDescription)")
                return
            }
            
            guard let snapshot = snapshot else {
                print("Error fetching playgrounds. Unknown error!")
                return
            }
            
            self.playgroundsList = []
            
            for document in snapshot.documents {
                
                let result = Result {
                    try document.data(as: Playground.self)
                }
                
                switch result {
                case .success(let playground):
                    self.playgroundsList.append(playground)
                    break
                case .failure(let error):
                    print("Error fetching playground: \(error.localizedDescription)")
                    break
                }
                
            }
            
        }
        
    }
    
    
    func SignOut() {
        do {
            try Auth.auth().signOut()
        } catch {
            print("Error signing out! Try Again")
        }
    }
    

    func loginUser(email : String, password : String){
        Auth.auth().signIn(withEmail: email, password: password){
            result, error in
            if let error = error {
                print("Failed to log in user", error)
                self.loginStatusMessage = "Failed to log in user: \(error.localizedDescription)"
                return
            }
            
            print("Successfully logged in as user : \(result?.user.uid ?? "" )")
        }
    }
    
    
    
    func registerUser(email : String, password : String){
        Auth.auth().createUser(withEmail: email, password: password){
            result, error in
            if let error = error {
                print("Failed to create user", error)
                self.loginStatusMessage = "Failed to create user: \(error.localizedDescription)"
                return
            }
            print("Successfully created user: \(result?.user.uid ?? "" )")
        }
    }
    
    
}
