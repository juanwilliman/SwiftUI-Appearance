//
//  Appearance.swift
//  AppearanceSelector
//
//  Created by Juan Williman on 10/7/22.
//

import SwiftUI

// MARK: - Appearance

enum Appearance: String, CaseIterable {
    
    case auto = "Auto"
    case light = "Light"
    case dark = "Dark"
    
    var colorScheme: ColorScheme? {
        switch self {
        case .auto:
            return .none
        case .light:
            return .light
        case .dark:
            return .dark
        }
    }
    
}
