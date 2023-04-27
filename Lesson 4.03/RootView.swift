//
//  RootView.swift
//  Lesson 4.03
//
//  Created by Elizabeth on 27/04/2023.
//

import SwiftUI

struct RootView: View {
    @AppStorage("userName") var userName: String = ""
    
    var body: some View {
        Group {
            if userName != "" {
                ContentView()
            } else {
                LoginView()
            }
        }
    }
}

struct RootView_Previews: PreviewProvider {
    static var previews: some View {
        RootView()
    }
}
