//
//  LoginView.swift
//  Akir4Mangas
//
//  Created by Alberto Alegre Bravo on 14/3/24.
//

import SwiftUI

struct LoginView: View {
    @EnvironmentObject var loginVM: LoginVM
    
    var body: some View {
        NavigationStack {
            VStack {
                Text("Log in")
                CustomTextField(title: "Username", value: $loginVM.username)
                CustomTextField(title: "Password", value: $loginVM.password)
               
                VStack(spacing: 15) {
                    Button(action: {
                        loginVM.userLogin()
                    }, label: {
                        Text("Login")
                    })

                    
                    HStack {
                        Text("New here?")
                        NavigationLink {
                            RegisterView()
                        } label: {
                            Text("Register")
                        }
                    }
                }
                .padding(.top, 15)
            }
            .alert("Wrong Login", isPresented: $loginVM.showLoginError, actions: {
                Button(action: {
                    
                }, label: {
                    Text("Dismiss")
                })
            }, message: {
                Text("Enter a valid Email or Password")
            })
            .navigationDestination(isPresented: $loginVM.isLoggedOk, destination: {
                Text("MainView")
            })
            .padding()
        }
    }
}

#Preview {
    LoginView()
        .environmentObject(LoginVM())
}
