//
//  RegisterView.swift
//  Akir4Mangas
//
//  Created by Alberto Alegre Bravo on 14/3/24.
//

import SwiftUI

struct RegisterView: View {
    @EnvironmentObject var vm: LoginVM
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack {
            CustomTextField(title: "Username", value: $vm.username)
            CustomTextField(title: "Password", value: $vm.password)
            
            Button(action: {
                dismiss()
            }, label: {
                Text("Confirm")
            })
        }
        .padding()
    }
}

#Preview {
    RegisterView()
        .environmentObject(LoginVM())
}
