//
//  ContentView.swift
//  Motivation Management
//
//  Created by PhantomSuckOnMyBallz on 1/12/1969.
//

import SwiftUI
import DesignSystem

public struct ContentView: View {
    @State private var username = ""
    @State private var password = ""
    @State private var wrongUsername: Float = 0
    @State private var wrongPassword: Float  = 0
    @State private var showingLoginScreen = false
    public var body: some View {
        NavigationView {
            ZStack {
                VStack {
                    Text("Login")
                        .font(.largeTitle)
                        .bold()
                        .padding()
                    Spacer()
                    TextField("Username", text: $username)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
                        .border(.red, width: CGFloat(wrongUsername))
                        
                    
                    SecureField("Password", text: $password)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
                        .border(.red, width: CGFloat(wrongPassword))
                    NavigationLink(destination: CreateAccount(), label :{ Text("Don't have a account? Register")
                    })
                    Spacer()
                    Button("Login") {
                        authenticateUser(username: username, password: password)
                        }
                    .foregroundColor(.white)
                    .frame(width: 300, height: 50)
                    .background(Color.blue)
                    .cornerRadius(10)
                    NavigationLink(destination: ForgotPasword(), label: {
                        Text("Forgot your password?")
                    })
                    Spacer()
                    NavigationLink(destination: Tutorial(), isActive: $showingLoginScreen) {
                        EmptyView()
                    }
                }
            }.navigationBarHidden(true)
        }
    }
    
    func authenticateUser(username: String, password: String) {
        if username.lowercased() == "hi" {
            wrongUsername = 0
            if password.lowercased() == "bye" {
                wrongPassword = 0
                showingLoginScreen = true
            } else {
                wrongPassword = 2
            }
        } else {
            wrongUsername = 2
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
