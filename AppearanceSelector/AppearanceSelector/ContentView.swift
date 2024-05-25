//
//  ContentView.swift
//  AppearanceSelector
//
//  Created by Juan Williman on 10/7/22.
//

import SwiftUI

// MARK: - Content View

struct ContentView: View {
    
    // MARK: - Properties
    
    @StateObject private var themeController = ThemeController.shared
    
    // MARK: - Body
    
    var body: some View {
        NavigationStack {
            List {
                Section("Customization") {
                    Picker("Appearance", selection: $themeController.selectedAppearance) {
                        ForEach(Appearance.allCases, id: \.self) { appearance in
                            Text(appearance.rawValue)
                        }
                    }
                }
            }
            .navigationTitle("Appearance")
        }
        .preferredColorScheme(themeController.selectedAppearance.colorScheme)
    }
}

// MARK: - Preview

#Preview {
    ContentView()
}
