//
//  ButtonView.swift
//  Lesson 4.03
//
//  Created by Elizabeth on 29/04/2023.
//

import SwiftUI


struct ButtonView: View {
    @ObservedObject var timer: TimeCounter
    @AppStorage("userName") var name: String = ""
    
    let color: Color
    
    var body: some View {
        Button(action: color == .red ? timer.startTimer : logOut) {
            Text(color == .red ? timer.buttonTitle : "Log Out")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.white)
        }
        .frame(width: 200, height: 60)
        .background(color)
        .cornerRadius(20)
        .overlay(
            RoundedRectangle(cornerRadius: 20)
                .stroke(.black, lineWidth: 4)
        )
    }
    
    private func logOut() {
        name = ""
    }
}
