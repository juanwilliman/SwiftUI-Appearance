//
//  ContentView.swift
//  AppearanceSelector
//
//  Created by Juan Williman on 10/7/22.
//

import SwiftUI

// MARK: - Content View

struct ContentView: View {
    
    // MARK: - Variables
    
    @StateObject private var themeController = ThemeController()
    
    // MARK: - Body
    
    var body: some View {
        VStack(alignment: .leading, spacing: 30) {
            ForEach(Appearance.allCases, id: \.self) { appearance in
                Button(appearance.rawValue) {
                    themeController.selectAppearance(appearance)
                }.foregroundColor(themeController.selectedAppearance == appearance ? .red : .accentColor)
            }
        }
        .padding()
        .preferredColorScheme(themeController.selectedAppearance.colorScheme)
    }
}

// MARK: - Preview

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
