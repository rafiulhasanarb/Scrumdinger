//
//  CardView.swift
//  Scrumdinger
//
//  Created by Rafiul Hasan on 11/2/24.
//

import SwiftUI

struct CardView: View {
    //MARK: Local Properties
    let scrum: DailyScrum
    
    //MARK: Body
    var body: some View {
        VStack(alignment: .leading) {
            Text(scrum.title)
                .font(.headline)
                .accessibilityAddTraits(.isHeader)
            
            Spacer()
            
            HStack {
                Label("\(scrum.attendees.count)", systemImage: "person.3")
                    .accessibilityLabel("\(scrum.attendees.count) attendees")
                Spacer()
                Label("\(scrum.lengthInMinutes)", systemImage: "clock")
                    .accessibilityLabel("\(scrum.lengthInMinutes) minute meeting")
                    .labelStyle(.trailingIcon)
            }
            .font(.caption)
        }
        .padding()
        .foregroundColor(scrum.theme.accentColor)
    }
}

#Preview {
    CardView(scrum: DailyScrum.sampleData[0])
        .background(DailyScrum.sampleData[0].theme.mainColor)
}
