//
//  LoginView.swift
//  Lesson 4.03
//
//  Created by Elizabeth on 27/04/2023.
//

import SwiftUI

struct LoginView: View {
    @State private var nameTyped = ""

    @AppStorage("userName") var name: String = ""
    
    var body: some View {
        VStack {
            HStack {
                TextField("Enter your name", text: $nameTyped)
                    .multilineTextAlignment(.center)
                Text("\(nameTyped.count)")
                    .foregroundColor(nameTyped.count < 3 ? .blue : .green)
            }
            Button(action: login) {
                HStack {
                    Image(systemName: "checkmark.circle")
                    Text("OK")
                }
            }
            .disabled(nameTyped.count < 3 ? true : false)
        }
        .padding()
    }
    
    private func login() {
        if !nameTyped.isEmpty {
            name = nameTyped
        }
    }
    
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
