//
//  SignUpPage.swift
//  myTutor
//
//  Created by Aida Garfami on 10/12/23.
//

import SwiftUI

struct SignUpPage: View {
    
    @State private var username = ""
    @State private var password = ""
    var body: some View {
        
        NavigationView {
            Form {
                
                Section (header: Text("Credentials")) {
                    TextField ("UserName", text: $username)
                    SecureField ("Password", text: $password)
                }
            }
            
            Section {
                Button ("Submit") {
           
                }
            }
        } // end navigationview
        .navigationTitle("Login Form")
    }
}

#Preview {
    SignUpPage()
}
