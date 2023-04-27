//
//  ContentView.swift
//  Lesson 4.03
//
//  Created by Elizabeth on 27/04/2023.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var timer = TimeCounter()
    @AppStorage("userName") var name: String = ""
    
    
    var body: some View {
        VStack {
            Text("Hi, \(name)")
                .font(.largeTitle)
                .padding(.top, 100)
            Text(timer.counter.formatted())
                .font(.largeTitle)
                .padding(.top, 100)
            Spacer()
            
            ButtonView(timer: timer)
            
            Spacer()
            
            ButtonLogOutView()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ButtonView: View {
    @ObservedObject var timer: TimeCounter
    
    var body: some View {
        Button(action: timer.startTimer) {
            Text(timer.buttonTitle)
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.white)
        }
        .frame(width: 200, height: 60)
        .background(.red)
        .cornerRadius(20)
        .overlay(
            RoundedRectangle(cornerRadius: 20)
                .stroke(.black, lineWidth: 4)
        )
    }
}

struct ButtonLogOutView: View {
    @AppStorage("userName") var userName: String = ""
    
    var body: some View {
        Button(action: logOut) {
            Text("Log Out")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.white)
        }
        .frame(width: 200, height: 60)
        .background(.blue)
        .cornerRadius(20)
        .overlay(
            RoundedRectangle(cornerRadius: 20)
                .stroke(.black, lineWidth: 4)
        )
    }
    
    private func logOut() {
        userName = ""
    }

}
