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
            
            ButtonView(timer: timer, color: .red)
            
            Spacer()
            
            ButtonView(timer: timer, color: .blue)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

