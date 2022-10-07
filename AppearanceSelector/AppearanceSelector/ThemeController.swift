//
//  ThemeController.swift
//  AppearanceSelector
//
//  Created by Juan Williman on 10/7/22.
//

import SwiftUI

// MARK: - Theme Controller

class ThemeController: ObservableObject {
    
    // MARK: - Variables
        
    @AppStorage("selectedAppearance") var selectedAppearance: Appearance = .auto
    
}

// MARK: - Appearance

extension ThemeController {
    
    func selectAppearance(_ appearance: Appearance) {
        selectedAppearance = appearance
    }
    
}
