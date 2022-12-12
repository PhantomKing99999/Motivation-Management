//
//  CreateAccount.swift
//  Motivation Management
//
//  Created by Lin Joe on 12/12/2022.
//

import SwiftUI
import DesignSystem

public struct ForgotPasword: View {
    @State private var email = ""
    @State private var username = ""
    @State private var password = ""
    @State private var wrongUsername: Float = 0
    @State private var wrongEmail: Float = 0
    @State private var wrongPassword: Float  = 0
    @State private var showingLoginScreen = false
    public var body: some View {
        NavigationView {
            ZStack {
                VStack {
                    Text("Forgot Your Pasword?")
                        .font(.largeTitle)
                        .bold()
                        .padding()
                    Spacer()
                    TextField("Email", text: $email)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
                        .border(.red, width: CGFloat(wrongEmail))
                    
                    TextField("New Password", text: $username)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
                        .border(.red, width: CGFloat(wrongUsername))
                        
                    
                    SecureField("Verification Code", text: $password)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
                        .border(.red, width: CGFloat(wrongPassword))
                    Button(action: {}, label: { Text("Send Verification Code")})
                    Spacer()
                    Button("Login") {
                        authenticateUser(username: username, password: password, email: email)
                        }
                    .foregroundColor(.white)
                    .frame(width: 300, height: 50)
                    .background(Color.blue)
                    .cornerRadius(10)
                    Spacer()
                    NavigationLink(destination: Text("You are logged in @\(username)"), isActive: $showingLoginScreen) {
                        EmptyView()
                    }
                }
            }.navigationBarHidden(true)
        }
    }
    
    func authenticateUser(username: String, password: String, email: String) {
        if username.lowercased() == "hi" {
            wrongUsername = 0
            if password.lowercased() == "bye" {
                wrongPassword = 0
                showingLoginScreen = true
                if email.lowercased() == "iamurdad@gmail.com" {
                } else {
                    wrongEmail = 2
                }
            } else {
                wrongPassword = 2
            }
            }else {
                wrongUsername = 2
        }
    }
}


struct ForgotPasword_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
