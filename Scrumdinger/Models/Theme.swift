//
//  Theme.swift
//  Scrumdinger
//
//  Created by Rafiul Hasan on 11/2/24.
//

import SwiftUI
import Foundation

enum Theme: String, CaseIterable, Identifiable {
    case bubblegum
    case buttercup
    case customIndigo
    case lavender
    case customMagenta
    case navy
    case customOrange
    case oxblood
    case periwinkle
    case poppy
    case customPurple
    case seafoam
    case sky
    case tan
    case customTeal
    case customYellow
    
    var accentColor: Color {
        switch self {
        case .bubblegum, .buttercup, .lavender, .customOrange, .periwinkle, .poppy, .seafoam, .sky, .tan, .customTeal, .customYellow:
            return .black
        case .customIndigo, .customMagenta, .navy, .oxblood, .customPurple:
            return .white
        }
    }
    
    var mainColor: Color {
        Color(rawValue)
    }
    var name: String {
        rawValue.capitalized
    }
    var id: String {
        name
    }
}
