//
//  ContentView.swift
//  Hello
//
//  Created by Jordan Singer on 11/7/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                Text("Hello")
                    .font(.system(size: 48, weight: .semibold))
                    .padding(.bottom)
                Spacer()
                
                NavigationLink(destination: LanguageView()) {
                    Text("Get Started")
                        .font(.headline)
                }
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
