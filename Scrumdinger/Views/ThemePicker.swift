//
//  ThemePicker.swift
//  Scrumdinger
//
//  Created by Rafiul Hasan on 11/2/24.
//

import SwiftUI

struct ThemePicker: View {
    //MARK: Local Properties
    @Binding var selection: Theme
    
    //MARK: Body
    var body: some View {
        Picker("Theme", selection: $selection) {
            ForEach(Theme.allCases) { theme in
                ThemeView(theme: theme)
                    .tag(theme)
            }
        }
        .pickerStyle(.navigationLink)
    }
}

#Preview {
    ThemePicker(selection: .constant(.periwinkle))
}
