//
//  ThemeController.swift
//  AppearanceSelector
//
//  Created by Juan Williman on 10/7/22.
//

import SwiftUI

// MARK: - Theme Controller

class ThemeController: ObservableObject {
    
    // MARK: - Properties
        
    @AppStorage("selectedAppearance") var selectedAppearance: Appearance = .auto
    
    // MARK: - Init
    
    static let shared = ThemeController()
    private init() {}
    
}
