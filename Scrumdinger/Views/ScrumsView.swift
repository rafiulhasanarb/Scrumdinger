//
//  ScrumsView.swift
//  Scrumdinger
//
//  Created by Rafiul Hasan on 11/2/24.
//

import SwiftUI

struct ScrumsView: View {
    //MARK: Local Properties
    @Binding var scrums: [DailyScrum]
    
    //MARK: Body
    var body: some View {
        NavigationStack {
            List($scrums) { $scrum in
                NavigationLink(destination: DetailView(scrum: $scrum)) {
                    CardView(scrum: scrum)
                }
                .listRowBackground(scrum.theme.mainColor)
            }
            .navigationTitle("Daily Scrums")
            .toolbar {
                Button(action: {}) {
                    Image(systemName: "plus")
                }
                .accessibilityLabel("New Scrum")
            }
        }
    }
}

#Preview {
    ScrumsView(scrums: .constant(DailyScrum.sampleData))
}
