//
//  WiFiView.swift
//  Hello
//
//  Created by Jordan Singer on 11/7/20.
//

import SwiftUI

struct WiFiView: View {
    @Environment(\.colorScheme) var colorScheme
    var networks = ["Secure Wi-Fi Network", "Cafe Wi-Fi", "Stacey's iPhone", "Public Wi-Fi", "Wi-Fi Network"]
    @State var showEnterPasswordView = false
    
    var body: some View {
        List {
            Section {
                VStack(spacing: 24) {
                    HStack {
                        Spacer()
                        Image(systemName: "wifi")
                            .font(.system(size: 72))
                            .foregroundColor(.blue)
                        Spacer()
                    }
                    
                    Text("Choose a Wi-Fi Network")
                        .font(.system(size: 32, weight: .bold))
                        .multilineTextAlignment(.center)
                }
                .padding()
            }
            .listRowInsets(EdgeInsets())
            .listRowBackground(
                colorScheme == .light ?
                    Color(UIColor.secondarySystemBackground) :
                    Color(UIColor.systemBackground)
            )
            
            Section {
                ForEach(networks, id: \.self) { network in
                    Button(action: { showEnterPasswordView = true }) {
                        HStack {
                            Text(network)
                                .font(.headline)
                            
                            Spacer()
                            
                            Image(systemName: "lock.fill")
                                .font(.caption)
                            Image(systemName: "wifi")
                                .font(.caption)
                        }
                        .padding(.vertical, 12)
                    }
                    .buttonStyle(PlainButtonStyle())
                    .sheet(isPresented: $showEnterPasswordView) {
                        WiFiPasswordView()
                    }
                }
            }
        }
        .listStyle(InsetGroupedListStyle())
    }
}

struct WiFiView_Previews: PreviewProvider {
    static var previews: some View {
        WiFiView()
    }
}
