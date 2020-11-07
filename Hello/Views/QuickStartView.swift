//
//  QuickStartView.swift
//  Hello
//
//  Created by Jordan Singer on 11/7/20.
//

import SwiftUI

struct QuickStartView: View {
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        ZStack {
            colorScheme == .light ? Color(UIColor.secondarySystemBackground) : Color(UIColor.systemBackground)
            
            VStack(spacing: 0) {
                VStack {
                    Spacer()
                    HStack {
                        Spacer()
                        ZStack {
                            Text("Hello")
                                .font(.system(size: 24, weight: .semibold))
                                .frame(width: 125, height: 222)
                                .background(colorScheme == .light ? Color.white : Color(UIColor.secondarySystemBackground))
                                .cornerRadius(8)
                                .offset(x: -48, y: 48)
                            
                            VStack(spacing: 10) {
                                HStack(spacing: 10) {
                                    Image(systemName: "app.fill").foregroundColor(.green)
                                    Image(systemName: "app.fill").foregroundColor(.white)
                                    Image(systemName: "app.fill").foregroundColor(.yellow)
                                    Image(systemName: "app.fill").foregroundColor(.gray)
                                }
                                
                                HStack(spacing: 10) {
                                    Image(systemName: "app.fill").foregroundColor(.blue)
                                    Image(systemName: "app.fill").foregroundColor(.gray)
                                    Image(systemName: "app.fill").foregroundColor(.green)
                                    Image(systemName: "app.fill").foregroundColor(.blue)
                                }
                                
                                HStack(spacing: 10) {
                                    Image(systemName: "app.fill").foregroundColor(.yellow)
                                    Image(systemName: "app.fill").foregroundColor(.white)
                                    Image(systemName: "app.fill").foregroundColor(.red)
                                    Image(systemName: "app.fill").foregroundColor(.purple)
                                }
                                
                                HStack(spacing: 10) {
                                    Image(systemName: "app.fill").foregroundColor(.pink)
                                    Image(systemName: "app.fill").foregroundColor(.blue)
                                    Image(systemName: "app.fill").foregroundColor(.blue)
                                    Image(systemName: "app.fill").foregroundColor(.orange)
                                }
                                
                                HStack(spacing: 10) {
                                    Image(systemName: "app.fill").foregroundColor(.red)
                                    Image(systemName: "app.fill").foregroundColor(.yellow)
                                    Image(systemName: "app.fill").foregroundColor(.green)
                                    Image(systemName: "app.fill").foregroundColor(.gray)
                                }
                                
                                Spacer()
                            }
                            .padding()
                            .font(.system(size: 20))
                            .frame(width: 125, height: 222)
                            .background(Color(UIColor.orange.withAlphaComponent(0.64)))
                            .background(Color.white)
                            .cornerRadius(8)
                            .offset(x: 48, y: 96)
                            .shadow(color: Color(UIColor.black.withAlphaComponent(0.04)), radius: 8, x: 0, y: 4)
                        }
                        Spacer()
                    }
                    Spacer()
                }
                .frame(height: 380)
                .clipShape(Rectangle())
                
                VStack(spacing: 16) {
                    Spacer()
                    Text("Quick Start")
                        .font(.system(size: 32, weight: .bold))
                        .multilineTextAlignment(.center)
                    
                    HStack {
                        Spacer()
                        Text("Bring your current iPhone or iPad near this iPhone to sign in and set up.\n\nIf your other iPhone or iPad doesn't show options for setting up this iPhone, make sure it's running iOS 11 or later, and has Bluetooth turned on. You can also set up this iPhone manually.")
                            .fixedSize(horizontal: false, vertical: true)
                            .font(.callout)
                            .multilineTextAlignment(.center)
                        Spacer()
                    }
                    
                    Spacer()
                    
                    NavigationLink(destination: WiFiView()) {
                        Text("Set Up Manually")
                            .font(.headline)
                    }
                    
                    Spacer()
                }
                .padding()
                .background(colorScheme == .light ? Color.white : Color(UIColor.secondarySystemBackground))
            }
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct QuickStartView_Previews: PreviewProvider {
    static var previews: some View {
        QuickStartView()
    }
}
