//
//  SpeakersView.swift
//  Config
//
//  Created by Anderson Sprenger on 30/03/21.
//

import SwiftUI

struct SpeakersView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: nil) {
                Spacer()
                ForEach (DataFile.shared.speakersData) { speaker in
                    NavigationLink(destination: SpeakerDetails(speaker: speaker)) {
                        SpeakerItem(speaker: speaker)
                    }
                    Divider()
                        .padding(.vertical, 15)
                }
                .padding(.horizontal)
            }
            VStack(alignment: .leading, spacing: nil) {
                ForEach (DataFile.shared.speakersData) { speaker in
                    SpeakerItem(speaker: speaker)
                    Divider()
                        .padding(.vertical, 15)
                }
                .padding(.horizontal)
            }
        }
    }
}

struct SpeakersView_Previews: PreviewProvider {
    static var previews: some View {
        SpeakersView()
    }
}
