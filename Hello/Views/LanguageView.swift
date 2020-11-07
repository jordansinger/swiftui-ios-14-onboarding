//
//  LanguageView.swift
//  Hello
//
//  Created by Jordan Singer on 11/7/20.
//

import SwiftUI

struct LanguageView: View {
    @Environment(\.colorScheme) var colorScheme
    var languages = [
        "English",
        "Español",
        "中文(简体)",
        "中文(繁體)",
        "Français",
        "Deutsch",
        "हिंदी",
        "Magyar",
        "Italiano",
        "日本語",
        "한국어",
        "Português",
        "Română",
        "Slovenski"
    ]
    
    var body: some View {
        List {
            Section {
                HStack {
                    Spacer()
                    Image(systemName: "globe")
                        .font(.system(size: 72))
                        .foregroundColor(.blue)
                    Spacer()
                }
                .padding(.vertical)
            }
            .listRowInsets(EdgeInsets())
            .listRowBackground(
                colorScheme == .light ?
                    Color(UIColor.secondarySystemBackground) :
                    Color(UIColor.systemBackground)
            )
            
            Section {
                ForEach(languages, id: \.self) { language in
                    NavigationLink(destination: CountryRegionView()) {
                        Text(language)
                            .font(.headline)
                            .padding(.vertical, 12)
                    }
                }
            }
        }
        .listStyle(InsetGroupedListStyle())
    }
}

struct LanguageView_Previews: PreviewProvider {
    static var previews: some View {
        LanguageView()
    }
}
