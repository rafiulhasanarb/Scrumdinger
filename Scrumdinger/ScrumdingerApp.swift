//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by Rafiul Hasan on 11/2/24.
//

import SwiftUI

@available(iOS 16.0, *)
@main
struct ScrumdingerApp: App {
    //MARK: Local Properties
    @State private var scrums = DailyScrum.sampleData
    
    //MARK: Body
    var body: some Scene {
        WindowGroup {
            ScrumsView(scrums: $scrums)
        }
    }
}
